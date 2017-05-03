CREATE OR REPLACE trigger apex_030200.wwv_bd_flowstepbuttons
    before delete on apex_030200.wwv_flow_step_buttons
    for each row
begin
    --
    -- delete compound condition that may exist for this button
    --
    if :old.button_condition_type = 'COMPOUND' then
        begin
            delete wwv_flow_compound_conditions
                where id = to_number(:old.button_condition)
                and flow_id = :old.flow_id
                and security_group_id = :old.security_group_id;
        exception when others then null;
        end;
    end if;
end wwv_bd_flowstepbuttons;
/