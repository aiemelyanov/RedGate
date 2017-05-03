CREATE OR REPLACE trigger apex_030200.wwv_biu_flow_mail_log
    before insert on apex_030200.wwv_flow_mail_log
    for each row
begin
    :new.last_updated_on := sysdate;
end;
/