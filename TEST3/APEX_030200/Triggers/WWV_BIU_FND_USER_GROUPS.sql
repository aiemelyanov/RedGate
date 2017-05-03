CREATE OR REPLACE trigger apex_030200.wwv_biu_fnd_user_groups
    before insert or update on apex_030200.wwv_flow_fnd_user_groups
    for each row
begin
    if inserting and :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
    --
    -- vpd
    --
    if :new.security_group_id is null then
       :new.security_group_id := nvl(wwv_flow_security.g_security_group_id,0);
    end if;
end wwv_biu_fnd_user_groups;
/