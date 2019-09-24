/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.util.KeyNamePair;

/** Generated Interface for AD_UserDef_Proc_Parameter
 *  @author iDempiere (generated) 
 *  @version Release 6.2
 */
public interface I_AD_UserDef_Proc_Parameter 
{

    /** TableName=AD_UserDef_Proc_Parameter */
    public static final String Table_Name = "AD_UserDef_Proc_Parameter";

    /** AD_Table_ID=200233 */
    public static final int Table_ID = 200233;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name AD_Process_Para_ID */
    public static final String COLUMNNAME_AD_Process_Para_ID = "AD_Process_Para_ID";

	/** Set Process Parameter	  */
	public void setAD_Process_Para_ID (int AD_Process_Para_ID);

	/** Get Process Parameter	  */
	public int getAD_Process_Para_ID();

	public org.compiere.model.I_AD_Process_Para getAD_Process_Para() throws RuntimeException;

    /** Column name AD_UserDef_Proc_ID */
    public static final String COLUMNNAME_AD_UserDef_Proc_ID = "AD_UserDef_Proc_ID";

	/** Set User defined Process.
	  * Primary Key : User defined Process
	  */
	public void setAD_UserDef_Proc_ID (int AD_UserDef_Proc_ID);

	/** Get User defined Process.
	  * Primary Key : User defined Process
	  */
	public int getAD_UserDef_Proc_ID();

	public org.compiere.model.I_AD_UserDef_Proc getAD_UserDef_Proc() throws RuntimeException;

    /** Column name AD_UserDef_Proc_Parameter_ID */
    public static final String COLUMNNAME_AD_UserDef_Proc_Parameter_ID = "AD_UserDef_Proc_Parameter_ID";

	/** Set AD_UserDef_Proc_Parameter_ID.
	  * Primary Key : User defined Process Parameter
	  */
	public void setAD_UserDef_Proc_Parameter_ID (int AD_UserDef_Proc_Parameter_ID);

	/** Get AD_UserDef_Proc_Parameter_ID.
	  * Primary Key : User defined Process Parameter
	  */
	public int getAD_UserDef_Proc_Parameter_ID();

    /** Column name AD_UserDef_Proc_Parameter_UU */
    public static final String COLUMNNAME_AD_UserDef_Proc_Parameter_UU = "AD_UserDef_Proc_Parameter_UU";

	/** Set AD_UserDef_Proc_Parameter_UU	  */
	public void setAD_UserDef_Proc_Parameter_UU (String AD_UserDef_Proc_Parameter_UU);

	/** Get AD_UserDef_Proc_Parameter_UU	  */
	public String getAD_UserDef_Proc_Parameter_UU();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name DefaultValue */
    public static final String COLUMNNAME_DefaultValue = "DefaultValue";

	/** Set Default Logic.
	  * Default value hierarchy, separated by ;

	  */
	public void setDefaultValue (String DefaultValue);

	/** Get Default Logic.
	  * Default value hierarchy, separated by ;

	  */
	public String getDefaultValue();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name DisplayLogic */
    public static final String COLUMNNAME_DisplayLogic = "DisplayLogic";

	/** Set Display Logic.
	  * If the Field is displayed, the result determines if the field is actually displayed
	  */
	public void setDisplayLogic (String DisplayLogic);

	/** Get Display Logic.
	  * If the Field is displayed, the result determines if the field is actually displayed
	  */
	public String getDisplayLogic();

    /** Column name Help */
    public static final String COLUMNNAME_Help = "Help";

	/** Set Comment/Help.
	  * Comment or Hint
	  */
	public void setHelp (String Help);

	/** Get Comment/Help.
	  * Comment or Hint
	  */
	public String getHelp();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsDisplayed */
    public static final String COLUMNNAME_IsDisplayed = "IsDisplayed";

	/** Set Displayed.
	  * Determines, if this field is displayed
	  */
	public void setIsDisplayed (String IsDisplayed);

	/** Get Displayed.
	  * Determines, if this field is displayed
	  */
	public String getIsDisplayed();

    /** Column name MandatoryLogic */
    public static final String COLUMNNAME_MandatoryLogic = "MandatoryLogic";

	/** Set Mandatory Logic	  */
	public void setMandatoryLogic (String MandatoryLogic);

	/** Get Mandatory Logic	  */
	public String getMandatoryLogic();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name ReadOnlyLogic */
    public static final String COLUMNNAME_ReadOnlyLogic = "ReadOnlyLogic";

	/** Set Read Only Logic.
	  * Logic to determine if field is read only (applies only when field is read-write)
	  */
	public void setReadOnlyLogic (String ReadOnlyLogic);

	/** Get Read Only Logic.
	  * Logic to determine if field is read only (applies only when field is read-write)
	  */
	public String getReadOnlyLogic();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
