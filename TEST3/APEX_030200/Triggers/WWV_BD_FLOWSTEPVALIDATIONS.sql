CREATE OR REPLACE trigger apex_030200.wwv_bd_flowstepvalidations
    before delete on apex_030200.wwv_flow_step_validations
    for each row
begin
    --
    -- delete compound condition that may exist for this validation
    --
    if :old.validation_condition_type = 'COMPOUND' then
        begin
            delete wwv_flow_compound_conditions
                where id = to_number(:old.validation_condition)
                and flow_id = :old.flow_id
                and security_group_id = :old.security_group_id;
        exception when others then null;
        end;
    end if;
end wwv_bd_flowstepvalidations;
/