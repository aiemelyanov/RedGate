CREATE OR REPLACE package apex_030200.wwv_flow_ppr_util
as
procedure run_process(
    p_process_name_or_id in varchar2)
    ;
end wwv_flow_ppr_util;
/