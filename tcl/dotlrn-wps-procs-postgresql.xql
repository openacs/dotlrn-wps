<?xml version="1.0"?>

<queryset>
<rdbms><type>postgresql</type><version>7.1</version></rdbms>

<fullquery name="dotlrn_wps::clone.call_wps_clone">
  <querytext>
    select wps__clone ( 
        :old_package_id,
        :new_package_id
      );
  </querytext>
</fullquery>


</queryset>
