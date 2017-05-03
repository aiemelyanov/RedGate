CREATE OR REPLACE trigger apex_030200.wwv_biu_flow_db_auth
    before insert or update on apex_030200.wwv_flow_db_auth
    for each row
begin
    :new.db_auth_schema := upper(:new.db_auth_schema);
end;
/