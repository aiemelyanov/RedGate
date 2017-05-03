CREATE OR REPLACE trigger apex_030200.wwv_flow_biu_standard_css
    before insert or update
    on apex_030200.wwv_flow_standard_css
    for each row
begin
    if inserting and :new.id is null then
         :new.id := wwv_flow_id.next_val;
    end if;
end;
/