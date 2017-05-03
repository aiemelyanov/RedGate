CREATE TABLE apex_030200.wwv_mig_acc_modules (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  moduleid NUMBER(11) NOT NULL,
  modulename VARCHAR2(400 BYTE),
  countofdeclarationlines NUMBER,
  countoflines NUMBER,
  lines CLOB,
  moduletype NUMBER,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_modules_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_modules_uk1 UNIQUE (project_id,dbid,moduleid),
  CONSTRAINT wwv_mig_acc_modules FOREIGN KEY (project_id,dbid) REFERENCES apex_030200.wwv_mig_access (project_id,dbid) ON DELETE CASCADE
);