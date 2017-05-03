CREATE OR REPLACE trigger apex_030200.wwv_biu_flow_templ_prefs
    before insert or update on apex_030200.wwv_flow_template_preferences
    for each row
begin
    --
    -- vpd
    --
    if :new.security_group_id is null then
       :new.security_group_id := nvl(wwv_flow_security.g_security_group_id,0);
    end if;
end;
/