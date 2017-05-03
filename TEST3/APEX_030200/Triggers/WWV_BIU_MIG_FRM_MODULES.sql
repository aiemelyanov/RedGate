CREATE OR REPLACE trigger apex_030200.wwv_biu_mig_frm_modules
    before insert or update on apex_030200.wwv_mig_frm_modules
    for each row
begin
    --insert unique primary key for id
     if inserting then
        if :new.id is null then
            :new.id := wwv_flow_id.next_val;
        end if;
        -- created
        :new.created_by := wwv_flow.g_user;
        :new.created_on := sysdate;
     end if;

    -- vpd
     if :new.security_group_id is null then
       :new.security_group_id := nvl(wwv_flow_security.g_security_group_id, 0);
     end if;

    -- last updated
    if not wwv_flow.g_import_in_progress then
        :new.last_updated_on := sysdate;
        :new.last_updated_by := wwv_flow.g_user;
    end if;
end;
/