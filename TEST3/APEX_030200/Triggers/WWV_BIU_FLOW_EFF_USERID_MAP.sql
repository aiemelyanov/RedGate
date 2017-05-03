CREATE OR REPLACE trigger apex_030200.wwv_biu_flow_eff_userid_map
    before insert or update on apex_030200.wwv_flow_effective_userid_map
    for each row
begin
    if inserting then
        if :new.id is null then
            :new.id := wwv_flow_id.next_val;
        end if;
    end if;
    --
    -- vpd
    --
    if :new.security_group_id is null then
       :new.security_group_id := nvl(wwv_flow_security.g_security_group_id,0);
    end if;
end;
/