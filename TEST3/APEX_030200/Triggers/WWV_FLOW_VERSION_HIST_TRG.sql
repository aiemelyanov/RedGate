CREATE OR REPLACE trigger apex_030200.wwv_flow_version_hist_trg
    before insert on apex_030200.wwv_flow_version$
    for each row
begin
    select wwv_flow_version_seq.nextval,sysdate into :new.seq,:new.date_applied from dual;
end;
/