CREATE OR REPLACE package apex_030200.wwv_flow_isc
as
   function vc return boolean;
   function current_flow_restricted return boolean;
   function deployment_environment return boolean;
end wwv_flow_isc;
/