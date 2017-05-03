CREATE OR REPLACE trigger apex_030200.wwv_flow_worksheets_bd_trig
    before delete on apex_030200.wwv_flow_worksheets
begin
    wwv_flow_worksheet.g_delete_in_progress := true;
end;
/