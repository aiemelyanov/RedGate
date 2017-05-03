CREATE TABLE apex_030200.wwv_flow_lock_page_log (
  "ID" NUMBER NOT NULL,
  lock_id NUMBER NOT NULL,
  lock_flow NUMBER,
  lock_page NUMBER,
  "ACTION" VARCHAR2(30 BYTE) NOT NULL CONSTRAINT dev_file_lock_log_action CHECK ( "ACTION" in ('LOCK','UNLOCK','UPDATE')),
  action_date DATE,
  developer VARCHAR2(255 BYTE),
  lock_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_lock_pg_log_pk PRIMARY KEY ("ID")
);