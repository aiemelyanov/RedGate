CREATE TABLE apex_030200.wwv_flow_jobs (
  "ID" NUMBER,
  "JOB" NUMBER NOT NULL,
  flow_id NUMBER,
  security_group_id NUMBER NOT NULL,
  "OWNER" VARCHAR2(30 BYTE),
  enduser VARCHAR2(255 BYTE),
  created DATE,
  modified DATE,
  completed DATE,
  status VARCHAR2(100 BYTE),
  system_status VARCHAR2(4000 BYTE),
  system_modified DATE,
  what CLOB NOT NULL,
  CONSTRAINT wwv_flow_jobs_pk PRIMARY KEY ("JOB")
);