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
--


declare
	foo integer;
begin
	-- create the implementation
	foo := acs_sc_impl.new (
		'dotlrn_applet',
		'dotlrn_wps',
		'dotlrn_wps'
	);

	-- add all the hooks

	-- GetPrettyName
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'GetPrettyName',
	       'dotlrn_wps::get_pretty_name',
	       'TCL'
	);

	-- AddApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddApplet',
	       'dotlrn_wps::add_applet',
	       'TCL'
	);

	-- RemoveApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveApplet',
	       'dotlrn_wps::remove_applet',
	       'TCL'
	);

	-- AddAppletToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddAppletToCommunity',
	       'dotlrn_wps::add_applet_to_community',
	       'TCL'
	);

	-- RemoveAppletFromCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveAppletFromCommunity',
	       'dotlrn_wps::remove_applet_from_community',
	       'TCL'
	);

	-- AddUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddUser',
	       'dotlrn_wps::add_user',
	       'TCL'
	);

	-- RemoveUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveUser',
	       'dotlrn_wps::remove_user',
	       'TCL'
	);

	-- AddUserToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'AddUserToCommunity',
	       'dotlrn_wps::add_user_to_community',
	       'TCL'
	);

	-- RemoveUserFromCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_wps',
	       'RemoveUserFromCommunity',
	       'dotlrn_wps::remove_user_from_community',
	       'TCL'
	);

    -- AddPortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_wps',
        impl_operation_name => 'AddPortlet',
        impl_alias => 'dotlrn_wps::add_portlet',
        impl_pl => 'TCL'
    );

    -- RemovePortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_wps',
        impl_operation_name => 'RemovePortlet',
        impl_alias => 'dotlrn_wps::remove_portlet',
        impl_pl => 'TCL'
    );

    -- Clone
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_wps',
        impl_operation_name => 'Clone',
        impl_alias => 'dotlrn_wps::clone',
        impl_pl => 'TCL'
    );

    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_wps',
        impl_operation_name => 'ChangeEventHandler',
        impl_alias => 'dotlrn_wps::change_event_handler',
        impl_pl => 'TCL'
    );

	-- Add the binding
	acs_sc_binding.new (
	    contract_name => 'dotlrn_applet',
	    impl_name => 'dotlrn_wps'
	);
end;
/
show errors
