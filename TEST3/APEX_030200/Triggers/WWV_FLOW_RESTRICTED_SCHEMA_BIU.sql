CREATE OR REPLACE TRIGGER apex_030200.wwv_flow_restricted_schema_biu
    before insert or update on apex_030200.wwv_flow_restricted_schemas
    for each row
begin
    if :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
    --
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(wwv_flow.g_user,user);
    else
        :new.last_updated_on := sysdate;
        :new.last_updated_by := nvl(wwv_flow.g_user,user);
    end if;
end;
/