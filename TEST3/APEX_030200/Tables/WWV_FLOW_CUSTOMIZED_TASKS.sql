CREATE TABLE apex_030200.wwv_flow_customized_tasks (
  "ID" NUMBER NOT NULL,
  task_name VARCHAR2(4000 BYTE),
  task_link VARCHAR2(4000 BYTE),
  display_sequence NUMBER,
  display_location VARCHAR2(30 BYTE) CONSTRAINT wwv_flow_ctasks_location CHECK (display_location in ('WORKSPACE_HOME','WORKSPACE_LOGIN')),
  displayed VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_ctasks_displayed CHECK (displayed in ('Y','N')),
  security_group_id NUMBER,
  PRIMARY KEY ("ID")
);