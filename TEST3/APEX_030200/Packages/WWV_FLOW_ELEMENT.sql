CREATE OR REPLACE package apex_030200.wwv_flow_element
as
    g_element          varchar2(255) := null;

    function add
        return number
    ;

end wwv_flow_element;
/