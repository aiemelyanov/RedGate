CREATE OR REPLACE trigger apex_030200.wwv_biu_online_help_ja
    before insert on apex_030200.wwv_flow_online_help_ja
    for each row
begin
    if inserting and :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
end;
/