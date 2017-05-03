CREATE TABLE apex_030200.wwv_mig_acc_rpts_modules (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  moduleid NUMBER(11) NOT NULL,
  reportid NUMBER(11),
  modulename VARCHAR2(1000 BYTE),
  countofdeclarationlines NUMBER(11),
  countoflines NUMBER(11),
  lines CLOB,
  moduletype NUMBER,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_rep_pk PRIMARY KEY ("ID"),
  CONSTRAINT accforms_accreportmodule_fk FOREIGN KEY (project_id,dbid,reportid) REFERENCES apex_030200.wwv_mig_acc_reports (project_id,dbid,reportid) ON DELETE CASCADE
);