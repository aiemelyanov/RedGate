CREATE OR REPLACE procedure apex_030200.wwv_flow_init_htp_buffer
is
begin
    --
    -- this procedure clears any text written the htp buffer
    --
    htp.init;
    --owa_util.show_page;
end;
/