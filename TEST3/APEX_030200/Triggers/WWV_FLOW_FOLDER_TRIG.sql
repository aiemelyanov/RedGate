CREATE OR REPLACE trigger apex_030200.wwv_flow_folder_trig
    before insert or update on apex_030200.wwv_flow_folders
    for each row
begin
    --
    -- maintain pk and timestamps
    --
    if inserting and :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
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
    -- set owner
    --
    if :new.owner is null then
        :new.owner := :new.created_by;
    end if;
    --
    -- vpd
    --
    if :new.security_group_id is null then
       :new.security_group_id := wwv_flow.get_sgid;
    end if;
end;
/