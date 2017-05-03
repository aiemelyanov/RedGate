CREATE TABLE apex_030200.wwv_mig_acc_relation_cols (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  relcolid NUMBER NOT NULL,
  relid NUMBER,
  parentcolid NUMBER,
  childcolid NUMBER,
  relcolname VARCHAR2(400 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_relcol_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_relcol_fk FOREIGN KEY (project_id,dbid,relid) REFERENCES apex_030200.wwv_mig_acc_relations (project_id,dbid,relid) ON DELETE CASCADE
);