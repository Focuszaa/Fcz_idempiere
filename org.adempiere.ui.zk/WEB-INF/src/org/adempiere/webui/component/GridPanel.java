/******************************************************************************
 * Copyright (C) 2008 Low Heng Sin                                            *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempiere.webui.component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.table.AbstractTableModel;

import org.adempiere.webui.LayoutUtils;
import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.editor.WEditor;
import org.adempiere.webui.event.TouchEventHelper;
import org.adempiere.webui.panel.AbstractADWindowPanel;
import org.adempiere.webui.util.SortComparator;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.GridTable;
import org.compiere.model.MSysConfig;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.zkoss.zk.au.out.AuFocus;
import org.zkoss.zk.au.out.AuScript;
import org.zkoss.zk.ui.AbstractComponent;
import org.zkoss.zk.ui.Component;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zk.ui.util.Clients;
import org.zkoss.zul.Borderlayout;
import org.zkoss.zul.Center;
import org.zkoss.zul.Frozen;
import org.zkoss.zul.South;
import org.zkoss.zul.Column;
import org.zkoss.zul.Div;
import org.zkoss.zul.Paging;
import org.zkoss.zul.Row;
import org.zkoss.zul.event.ZulEvents;

/**
 * Grid view implemented using the Grid component.
 * @author Low Heng Sin
 *
 */
public class GridPanel extends Borderlayout implements EventListener<Event>
{
	/**
	 * generated serial version ID
	 */
	private static final long serialVersionUID = -7151423393713654553L;

	private static final int MIN_COLUMN_WIDTH = 100;

	private static final int MAX_COLUMN_WIDTH = 300;

	private static final int MIN_COMBOBOX_WIDTH = 160;

	private static final int MIN_NUMERIC_COL_WIDTH = 130;

	private Grid listbox = null;

	private int pageSize = 100;

	private GridField[] gridField;
	private AbstractTableModel tableModel;

	private int numColumns = 5;

	private int windowNo;

	private GridTab gridTab;

	private boolean init;

	private GridTableListModel listModel;

	private Paging paging;

	private GridTabRowRenderer renderer;

	private South south;

	private boolean modeless = true;

	private String columnOnClick;

	private AbstractADWindowPanel windowPanel;

	private boolean refreshing;

	public static final String PAGE_SIZE_KEY = "ZK_PAGING_SIZE";

	public static final String MODE_LESS_KEY = "ZK_GRID_EDIT_MODELESS";

	public GridPanel()
	{
		this(0);
	}

	/**
	 * @param windowNo
	 */
	public GridPanel(int windowNo)
	{
		this.windowNo = windowNo;
		listbox = new Grid();
		listbox.addEventListener(ZulEvents.ON_AFTER_RENDER, this);
		south = new South();
		this.appendChild(south);

		//default paging size
		if (AEnv.isTablet())
		{
			//anything more than 20 is very slow on a tablet
			pageSize = 20;
		}
		else
		{
			pageSize = MSysConfig.getIntValue(PAGE_SIZE_KEY, 100);
		}
		
		//default true for better UI experience
		modeless = MSysConfig.getBooleanValue(MODE_LESS_KEY, true);
		
	}

	/**
	 *
	 * @param gridTab
	 */
	public void init(GridTab gridTab)
	{
		if (init) return;

		this.gridTab = gridTab;
		tableModel = gridTab.getTableModel();

		numColumns = tableModel.getColumnCount();

		gridField = ((GridTable)tableModel).getFields();

		setupColumns();
		render();

		updateListIndex();

		this.init = true;
	}

	/**
	 *
	 * @return boolean
	 */
	public boolean isInit() {
		return init;
	}

	/**
	 * call when tab is activated
	 * @param gridTab
	 */
	public void activate(GridTab gridTab) {
		if (!isInit()) {
			init(gridTab);
		}
	}

	/**
	 * refresh after switching from form view
	 * @param gridTab
	 */
	public void refresh(GridTab gridTab) {
		if (this.gridTab != gridTab || !isInit())
		{
			init = false;
			init(gridTab);
		}
		else
		{
			refreshing = true;
			listbox.setModel(listModel);
			updateListIndex();
			refreshing = false;
		}
	}

	public boolean isRefreshing() {
		return refreshing;
	}

	/**
	 * Update current row from model
	 */
	public void updateListIndex() {
		if (gridTab == null || !gridTab.isOpen()) return;

		int rowIndex  = gridTab.getCurrentRow();
		if (pageSize > 0) {
			if (paging.getTotalSize() != gridTab.getRowCount())
				paging.setTotalSize(gridTab.getRowCount());
			int pgIndex = rowIndex >= 0 ? rowIndex % pageSize : 0;
			int pgNo = rowIndex >= 0 ? (rowIndex - pgIndex) / pageSize : 0;
			if (listModel.getPage() != pgNo) {
				listModel.setPage(pgNo);
				if (renderer.isEditing()) {
					renderer.stopEditing(false);
				}
			} else if (rowIndex == renderer.getCurrentRowIndex()){
				if (modeless && !renderer.isEditing())
					Events.echoEvent("onPostSelectedRowChanged", this, null);
				return;
			} else {
				if (renderer.isEditing()) {
					renderer.stopEditing(false);
					if (((renderer.getCurrentRowIndex() - pgIndex) / pageSize) == pgNo) {
						listModel.updateComponent(renderer.getCurrentRowIndex() % pageSize);
					}
				}
			}
			if (paging.getActivePage() != pgNo) {
				paging.setActivePage(pgNo);
			}
			if (rowIndex >= 0 && pgIndex >= 0) {
				Events.echoEvent("onPostSelectedRowChanged", this, null);
			}
		} else {
			if (rowIndex >= 0) {
				Events.echoEvent("onPostSelectedRowChanged", this, null);
			}
		}
	}

	/**
	 * set paging size
	 * @param pageSize
	 */
	public void setPageSize(int pageSize)
	{
		this.pageSize = pageSize;
	}

	public void clear()
	{
		this.getChildren().clear();
	}

	/**
	 * toggle visibility
	 * @param bool
	 */
	public void showGrid(boolean bool)
	{
		if (bool)
			this.setVisible(true);
		else
			this.setVisible(false);
	}

	private void setupColumns()
	{
		if (init) return;

		Columns columns = new Columns();
		
		Frozen frozen = new Frozen();
		frozen.setColumns(1);
		listbox.appendChild(frozen);
		org.zkoss.zul.Column indicator = new Column();				
		indicator.setWidth("10px");
		try {
			indicator.setSort("none");
		} catch (Exception e) {} 
		columns.appendChild(indicator);
		listbox.appendChild(columns);
		columns.setSizable(true);
		columns.setMenupopup("auto");
		columns.setColumnsgroup(false);

		Map<Integer, String> colnames = new HashMap<Integer, String>();
		int index = 0;
		for (int i = 0; i < numColumns; i++)
		{
			if (gridField[i].isDisplayed())
			{
				colnames.put(index, gridField[i].getHeader());
				index++;
				org.zkoss.zul.Column column = new Column();
				column.setSortAscending(new SortComparator(i, true, Env.getLanguage(Env.getCtx())));
				column.setSortDescending(new SortComparator(i, false, Env.getLanguage(Env.getCtx())));
				column.setLabel(gridField[i].getHeader());
				int l = DisplayType.isNumeric(gridField[i].getDisplayType())
					? 120 : gridField[i].getDisplayLength() * 9;
				//special treatment for line
				if (DisplayType.isNumeric(gridField[i].getDisplayType()) && "Line".equals(gridField[i].getColumnName()))
				{
					l = 60;
				}
				else
				{
					if (gridField[i].getHeader().length() * 9 > l)
						l = gridField[i].getHeader().length() * 9;
					if (l > MAX_COLUMN_WIDTH)
						l = MAX_COLUMN_WIDTH;
					else if ( l < MIN_COLUMN_WIDTH)
						l = MIN_COLUMN_WIDTH;
					if (gridField[i].getDisplayType() == DisplayType.Table || gridField[i].getDisplayType() == DisplayType.TableDir)
					{
						if (l < MIN_COMBOBOX_WIDTH)
							l = MIN_COMBOBOX_WIDTH;
					}
					else if (DisplayType.isNumeric(gridField[i].getDisplayType()))
					{
						if (l < MIN_NUMERIC_COL_WIDTH)
							l = MIN_NUMERIC_COL_WIDTH;
					}
				}
				column.setWidth(Integer.toString(l) + "px");
				columns.appendChild(column);
			}
		}
	}

	private void render()
	{
		LayoutUtils.addSclass("adtab-grid-panel", this);

		listbox.setVflex(true);
		//true might looks better, false for better performance
		listbox.setSizedByContent(false);
		listbox.addEventListener(Events.ON_CLICK, this);

		updateModel();

		Center center = new Center();
		center.appendChild(listbox);
		if (AEnv.isTablet()) {
			LayoutUtils.addSclass("tablet-scrolling", center);
		}
		this.appendChild(center);

		if (pageSize > 0)
		{
			paging = new Paging();
			paging.setPageSize(pageSize);
			paging.setTotalSize(tableModel.getRowCount());
			paging.setDetailed(true);
			south.appendChild(paging);
			paging.addEventListener(ZulEvents.ON_PAGING, this);
			renderer.setPaging(paging);
		}
		else
		{
			south.setVisible(false);
		}		
		
		if (AEnv.isTablet()) {
			TouchEventHelper.addTabletScrollingFix(listbox);
		}
	}

	private void updateModel() {
		listModel = new GridTableListModel((GridTable)tableModel, windowNo);
		listModel.setPageSize(pageSize);
		if (renderer != null && renderer.isEditing())
			renderer.stopEditing(false);
		renderer = new GridTabRowRenderer(gridTab, windowNo);
		renderer.setGridPanel(this);
		renderer.setADWindowPanel(windowPanel);

		listbox.setRowRenderer(renderer);
		listbox.setModel(listModel);
	}

	/**
	 * deactivate panel
	 */
	public void deactivate() {
		if (renderer != null && renderer.isEditing())
			renderer.stopEditing(true);
	}

	public void onEvent(Event event) throws Exception
	{
		if (event == null)
			return;
		else if (event.getTarget() == listbox && Events.ON_CLICK.equals(event.getName()))
		{
			Object data = event.getData();
			org.zkoss.zul.Row row = null;
			String columnName = null;
			if (data != null && data instanceof Component)
			{
				if (data instanceof org.zkoss.zul.Row)
					row = (org.zkoss.zul.Row) data;
				else
				{
					AbstractComponent cmp = (AbstractComponent) data;
					if (cmp.getParent() instanceof org.zkoss.zul.Row)
					{
						row = (Row) cmp.getParent();
						columnName = (String) cmp.getAttribute("columnName");
					}
				}
			}
			if (row != null)
			{
				//click on selected row to enter edit mode
				if (row == renderer.getCurrentRow())
				{
					if (!renderer.isEditing())
					{
						renderer.editCurrentRow();
						if (columnName != null && columnName.trim().length() > 0)
							setFocusToField(columnName);
						else
							renderer.setFocusToEditor();
					}
				}
				else
				{
					int index = listbox.getRows().getChildren().indexOf(row);
					if (index >= 0 ) {
						columnOnClick = columnName;
						onSelectedRowChange(index);
					}
				}
			}
			event.stopPropagation();
        }
		else if (event.getTarget() == paging)
		{
			int pgNo = paging.getActivePage();
			if (pgNo != listModel.getPage())
			{
				listModel.setPage(pgNo);
				onSelectedRowChange(0);
			}
		}
		else if (event.getName().equals(ZulEvents.ON_AFTER_RENDER))
		{
			//render all rows of active page to give smooth scrolling performance
			listbox.renderAll();
		}
	}

	private void onSelectedRowChange(int index) {
		if (updateModelIndex(index)) {
			updateListIndex();
		}
	}

	/**
	 * Event after the current selected row change
	 */
	public void onPostSelectedRowChanged() {
		if (listbox.getRows().getChildren().isEmpty())
			return;

		int rowIndex  = gridTab.isOpen() ? gridTab.getCurrentRow() : -1;
		if (rowIndex >= 0 && pageSize > 0) {
			int pgIndex = rowIndex >= 0 ? rowIndex % pageSize : 0;
			org.zkoss.zul.Row row = (org.zkoss.zul.Row) listbox.getRows().getChildren().get(pgIndex);
			if (!isRowRendered(row, pgIndex)) {
				listbox.renderRow(row);
			} else {
//				Row old = renderer.getCurrentRow();
//				int oldIndex = renderer.getCurrentRowIndex();
				renderer.setCurrentRow(row);
				//remark: following 3 line cause the previously selected row being render twice
//				if (old != null && old != row && oldIndex >= 0 && oldIndex != gridTab.getCurrentRow())
//				{
//					listModel.updateComponent(oldIndex % pageSize);
//				}
			}
			if (modeless && !renderer.isEditing()) {
				renderer.editCurrentRow();
				if (columnOnClick != null && columnOnClick.trim().length() > 0) {
					setFocusToField(columnOnClick);
					columnOnClick = null;
				} else {
					renderer.setFocusToEditor();
				}
			} else {
				focusToRow(row);
			}
		} else if (rowIndex >= 0) {
			org.zkoss.zul.Row row = (org.zkoss.zul.Row) listbox.getRows().getChildren().get(rowIndex);
			if (!isRowRendered(row, rowIndex)) {
				listbox.renderRow(row);
			} else {
//				Row old = renderer.getCurrentRow();
//				int oldIndex = renderer.getCurrentRowIndex();
				renderer.setCurrentRow(row);
				//remark: following 3 line cause the previously selected row being render twice
//				if (old != null && old != row && oldIndex >= 0 && oldIndex != gridTab.getCurrentRow())
//				{
//					listModel.updateComponent(oldIndex);
//				}
			}
			if (modeless && !renderer.isEditing()) {
				renderer.editCurrentRow();
				if (columnOnClick != null && columnOnClick.trim().length() > 0) {
					setFocusToField(columnOnClick);
					columnOnClick = null;
				} else {
					renderer.setFocusToEditor();
				}
			} else {
				focusToRow(row);
			}
		}
	}

	/**
	 * scroll grid to the current focus row
	 */
	public void scrollToCurrentRow() {
		onPostSelectedRowChanged();
	}
	
	private void focusToRow(org.zkoss.zul.Row row) {
		if (renderer.isEditing()) {
			if (columnOnClick != null && columnOnClick.trim().length() > 0) {
				setFocusToField(columnOnClick);
				columnOnClick = null;
			} else {
				renderer.setFocusToEditor();
			}
		} else {
			Component cmp = null;
			List<?> childs = row.getChildren();
			for (Object o : childs) {
				Component c = (Component) o;
				if (!c.isVisible())
					continue;
				c = c.getFirstChild();
				if (c == null)
					continue;
				if (c.getNextSibling() != null) {
					cmp = c.getNextSibling();
					break;
				}
			}
			if (cmp != null)
				Clients.response(new AuScript(null, "scrollToRow('" + cmp.getUuid() + "');"));

			if (columnOnClick != null && columnOnClick.trim().length() > 0) {
				List<?> list = row.getChildren();
				for(Object element : list) {
					if (element instanceof Div) {
						Div div = (Div) element;
						if (columnOnClick.equals(div.getAttribute("columnName"))) {
							cmp = div.getFirstChild();
							Clients.response(new AuScript(null, "scrollToRow('" + cmp.getUuid() + "');"));
							break;
						}
					}
				}
				columnOnClick = null;
			}
		}
	}

	private boolean isRowRendered(org.zkoss.zul.Row row, int index) {
		if (row.getChildren().size() == 0) {
			return false;
		} else if (row.getChildren().size() == 1) {
			if (!(row.getChildren().get(0) instanceof Div)) {
				return false;
			}
		}
		return true;
	}

	private boolean updateModelIndex(int rowIndex) {
		if (pageSize > 0) {
			int start = listModel.getPage() * listModel.getPageSize();
			rowIndex = start + rowIndex;
		}

		if (gridTab.getCurrentRow() != rowIndex) {
			gridTab.navigate(rowIndex);
			return true;
		}
		return false;
	}

	/**
	 * @return Grid
	 */
	public Grid getListbox() {
		return listbox;
	}

	/**
	 * Validate display properties of fields of current row
	 * @param col
	 */
	public void dynamicDisplay(int col) {
		if (gridTab == null || !gridTab.isOpen())
        {
            return;
        }

        //  Selective
        if (col > 0)
        {
        	GridField changedField = gridTab.getField(col);
            String columnName = changedField.getColumnName();
            ArrayList<?> dependants = gridTab.getDependantFields(columnName);
            if (dependants.size() == 0 && changedField.getCallout().length() > 0)
            {
                return;
            }
        }
        	

        boolean noData = gridTab.getRowCount() == 0;
        List<WEditor> list =  renderer.getEditors();
        for (WEditor comp : list)
        {
            GridField mField = comp.getGridField();
            if (mField != null && mField.getIncluded_Tab_ID() <= 0)
            {
                if (noData)
                {
                    comp.setReadWrite(false);
                }
                else
                {
                	comp.dynamicDisplay();
                    boolean rw = mField.isEditable(true);   //  r/w - check Context
                    comp.setReadWrite(rw);
                }
                
                comp.setVisible(mField.isDisplayed(true));
            }
        }   //  all components
	}

	/**
	 *
	 * @param windowNo
	 */
	public void setWindowNo(int windowNo) {
		this.windowNo = windowNo;
	}

	@Override
	public void focus() {
		if (renderer != null && renderer.isEditing()) {
			renderer.setFocusToEditor();
		}
	}

	/**
	 * Handle enter key event
	 */
	public boolean onEnterKey() {
		if (!modeless && renderer != null && !renderer.isEditing()) {
			renderer.editCurrentRow();
			renderer.setFocusToEditor();
			return true;
		}
		return false;
	}

	/**
	 * @param columnName
	 */
	public void setFocusToField(String columnName) {
		boolean found = false;
		for (WEditor editor : renderer.getEditors()) {
			if (found)
				editor.setHasFocus(false);
			else if (columnName.equals(editor.getColumnName())) {
				editor.setHasFocus(true);
				Component c = editor.getComponent();
				if (c instanceof EditorBox) {
					c = ((EditorBox)c).getTextbox();
				} else if (c instanceof NumberBox) {
					c = ((NumberBox)c).getDecimalbox();
				}
				Clients.response(new AuFocus(c));
				found = true;
			}
		}
	}

	/**
	 * @param winPanel
	 */
	public void setADWindowPanel(AbstractADWindowPanel winPanel) {
		windowPanel = winPanel;
		if (renderer != null)
			renderer.setADWindowPanel(windowPanel);
	}
}
