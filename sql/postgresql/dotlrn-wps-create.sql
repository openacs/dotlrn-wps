--
--  Copyright (C) 2001, 2002 MIT
--
--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--


--
-- The wps applet for dotLRN
--
-- Copyright (C) 2003 MIT
-- @author Rocael Hernandez (roc@viaro.net)
-- @creation-date 2003-05-24

-- $Id$


-- create the implementation
select acs_sc_impl__new (
		'dotlrn_applet',
		'dotlrn_wps',
		'dotlrn_wps'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'GetPrettyName',
	       'dotlrn_wps::get_pretty_name',
	       'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddApplet',
	       'dotlrn_wps::add_applet',
	       'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveApplet',
	       'dotlrn_wps::remove_applet',
	       'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddAppletToCommunity',
	       'dotlrn_wps::add_applet_to_community',
	       'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveAppletFromCommunity',
	       'dotlrn_wps::remove_applet_from_community',
	       'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddUser',
	       'dotlrn_wps::add_user',
	       'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveUser',
	       'dotlrn_wps::remove_user',
	       'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddUserToCommunity',
	       'dotlrn_wps::add_user_to_community',
	       'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveUserFromCommunity',
	       'dotlrn_wps::remove_user_from_community',
	       'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_wps',
        'AddPortlet',
        'dotlrn_wps::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_wps',
        'RemovePortlet',
        'dotlrn_wps::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_wps',
        'Clone',
        'dotlrn_wps::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_wps',
        'ChangeEventHandler',
        'dotlrn_wps::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
	    'dotlrn_applet',
	    'dotlrn_wps'
);
