/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.compiere.model;

import java.lang.reflect.Constructor;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.logging.Level;
import org.compiere.util.KeyNamePair;

/** Generated Model for K_CategoryValue
 *  @author Adempiere (generated) 
 *  @version Release 3.5.1a - $Id$ */
public class X_K_CategoryValue extends PO implements I_K_CategoryValue, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

    /** Standard Constructor */
    public X_K_CategoryValue (Properties ctx, int K_CategoryValue_ID, String trxName)
    {
      super (ctx, K_CategoryValue_ID, trxName);
      /** if (K_CategoryValue_ID == 0)
        {
			setK_CategoryValue_ID (0);
			setK_Category_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_K_CategoryValue (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_K_CategoryValue[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{

		if (Description != null && Description.length() > 255)
		{
			log.warning("Length > 255 - truncated");
			Description = Description.substring(0, 255);
		}
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	/** Set Category Value.
		@param K_CategoryValue_ID 
		The value of the category
	  */
	public void setK_CategoryValue_ID (int K_CategoryValue_ID)
	{
		if (K_CategoryValue_ID < 1)
			 throw new IllegalArgumentException ("K_CategoryValue_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_K_CategoryValue_ID, Integer.valueOf(K_CategoryValue_ID));
	}

	/** Get Category Value.
		@return The value of the category
	  */
	public int getK_CategoryValue_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_K_CategoryValue_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_K_Category getK_Category() throws Exception 
    {
        Class<?> clazz = MTable.getClass(I_K_Category.Table_Name);
        I_K_Category result = null;
        try	{
	        Constructor<?> constructor = null;
	    	constructor = clazz.getDeclaredConstructor(new Class[]{Properties.class, int.class, String.class});
    	    result = (I_K_Category)constructor.newInstance(new Object[] {getCtx(), new Integer(getK_Category_ID()), get_TrxName()});
        } catch (Exception e) {
	        log.log(Level.SEVERE, "(id) - Table=" + Table_Name + ",Class=" + clazz, e);
	        log.saveError("Error", "Table=" + Table_Name + ",Class=" + clazz);
           throw e;
        }
        return result;
    }

	/** Set Knowledge Category.
		@param K_Category_ID 
		Knowledge Category
	  */
	public void setK_Category_ID (int K_Category_ID)
	{
		if (K_Category_ID < 1)
			 throw new IllegalArgumentException ("K_Category_ID is mandatory.");
		set_ValueNoCheck (COLUMNNAME_K_Category_ID, Integer.valueOf(K_Category_ID));
	}

	/** Get Knowledge Category.
		@return Knowledge Category
	  */
	public int getK_Category_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_K_Category_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		if (Name == null)
			throw new IllegalArgumentException ("Name is mandatory.");

		if (Name.length() > 60)
		{
			log.warning("Length > 60 - truncated");
			Name = Name.substring(0, 60);
		}
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }
}