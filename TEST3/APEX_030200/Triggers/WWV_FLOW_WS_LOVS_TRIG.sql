CREATE OR REPLACE trigger apex_030200.wwv_flow_ws_lovs_trig
    before insert or update on apex_030200.wwv_flow_worksheet_lovs
    for each row
begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
    --
    -- update stamps
    --
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(wwv_flow.g_user,user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(wwv_flow.g_user,user);
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(wwv_flow.g_user,user);
    end if;
    --
    -- update parent timestamp
    --
    update wwv_flow_worksheets
       set updated_on = :new.updated_on,
           updated_by = :new.updated_by
     where id = :new.worksheet_id;
    --
    -- vpd
    --
    if :new.security_group_id is null then
       :new.security_group_id := wwv_flow.get_sgid;
    end if;
end;
/