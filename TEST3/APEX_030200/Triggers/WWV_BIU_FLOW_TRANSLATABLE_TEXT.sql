CREATE OR REPLACE trigger apex_030200.wwv_biu_flow_translatable_text
    before insert or update on apex_030200.wwv_flow_translatable_text$
    for each row
begin
    if inserting and :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
    --
    if :new.template_translatable is null then
        :new.template_translatable := 'N';
    end if;
    --
    -- vpd
    --
    if :new.security_group_id is null then
       :new.security_group_id := nvl(wwv_flow_security.g_security_group_id,0);
    end if;
    --
    -- last updated
    --
    if not wwv_flow.g_import_in_progress then
        :new.last_updated_on := sysdate;
        :new.last_updated_by := wwv_flow.g_user;
    end if;
end;
/