CREATE OR REPLACE trigger apex_030200.wwv_biu_flow_items_audit
    before insert or update or delete on apex_030200.wwv_flow_items
    for each row
declare
    l_action varchar2(1);
begin
    if inserting then
       l_action := 'I';
    elsif updating then
       l_action := 'U';
    else
       l_action := 'D';
    end if;
    begin
    wwv_flow_audit.audit_action (
       p_table_name => 'WWV_FLOW_ITEMS',
       p_action     => l_action,
       p_table_pk   => nvl(:old.id,:new.id));
    exception when others then null;
    end;
end;
/