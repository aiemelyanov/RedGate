CREATE OR REPLACE package body apex_030200.WWV_FLOW_FND_FUNCTION
as
function TEST (
    function_name IN varchar2) return boolean
is
begin
    return true;
end test;
end wwv_flow_fnd_function;
/