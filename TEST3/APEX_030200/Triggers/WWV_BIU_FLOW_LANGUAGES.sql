CREATE OR REPLACE trigger apex_030200.wwv_biu_flow_languages
    before insert or update on apex_030200.wwv_flow_languages
    for each row
begin
    :new.lang_id_upper := upper(:new.lang_id);
    if inserting and :new.id is null then
        :new.id := wwv_flow_id.next_val;
    end if;
end;
/