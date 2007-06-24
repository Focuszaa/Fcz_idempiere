/**********************************************************************
 * This file is part of Adempiere ERP Bazaar                          * 
 * http://www.adempiere.org                                           * 
 *                                                                    * 
 * Copyright (C) Akuna Ltd.                                           * 
 * Copyright (C) Contributors                                         * 
 *                                                                    * 
 * This program is free software; you can redistribute it and/or      * 
 * modify it under the terms of the GNU General Public License        * 
 * as published by the Free Software Foundation; either version 2     * 
 * of the License, or (at your option) any later version.             * 
 *                                                                    * 
 * This program is distributed in the hope that it will be useful,    * 
 * but WITHOUT ANY WARRANTY; without even the implied warranty of     * 
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the       * 
 * GNU General Public License for more details.                       * 
 *                                                                    * 
 * You should have received a copy of the GNU General Public License  * 
 * along with this program; if not, write to the Free Software        * 
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,         * 
 * MA 02110-1301, USA.                                                * 
 *                                                                    * 
 * Contributors:                                                      * 
 *  - Michael Judd (mjudd@users.sf.net)                               * 
 **********************************************************************/

package org.adempiere.interfaces;

import java.util.HashMap;

/**
 * Interfce for Postcode Lookup Web Service.
 * http://sourceforge.net/tracker/index.php?func=detail&aid=1741222&group_id=176962&atid=879335
 * The Postcode lookup class interface
 */
public interface PostcodeLookupInterface {
	public int lookupPostcode(String postcode);
	public void setPassword(String password);
	public void setClientID(String clientID);
	public void setServerUrl(String serverUrl);
	public HashMap<String, Object> getPostCodeData();
	public PostcodeLookupInterface newInstance();
}
