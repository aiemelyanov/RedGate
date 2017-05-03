CREATE OR REPLACE trigger apex_030200.wwv_flow_biu_standard_icons
    before insert or update
    on apex_030200.wwv_flow_standard_icons
    for each row
begin
    if inserting and :new.id is null then
         :new.id := wwv_flow_id.next_val;
    end if;
end;
/