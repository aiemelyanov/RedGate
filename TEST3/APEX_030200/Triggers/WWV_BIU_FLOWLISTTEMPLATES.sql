CREATE OR REPLACE trigger apex_030200.wwv_biu_flowlisttemplates
    before insert or update on apex_030200.wwv_flow_list_templates
    for each row
begin
    if inserting and :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
    if :new.list_template_before_rows is null then
       :new.list_template_before_rows := ' ';
    end if;
    if :new.list_template_after_rows is null then
       :new.list_template_after_rows := ' ';
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
        update wwv_flows set
           last_updated_on = sysdate,
           last_updated_by = wwv_flow.g_user
        where
           id = :new.flow_id and
           security_group_id = :new.security_group_id;
    end if;
end;
/