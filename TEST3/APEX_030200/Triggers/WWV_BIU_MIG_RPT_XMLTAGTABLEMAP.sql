CREATE OR REPLACE trigger apex_030200.wwv_biu_mig_rpt_xmltagtablemap
    before insert or update on apex_030200.wwv_mig_rpt_xmltagtablemap
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

    -- last updated
    if not wwv_flow.g_import_in_progress then
        :new.last_updated_on := sysdate;
        :new.last_updated_by := wwv_flow.g_user;
    end if;
end;
/