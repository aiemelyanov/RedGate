CREATE TABLE apex_030200.wwv_mig_acc_indexes_cols (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  indcolid NUMBER(11) NOT NULL,
  indid NUMBER(11),
  colid NUMBER(11),
  colorder NUMBER(11),
  tblid NUMBER(11),
  colname VARCHAR2(400 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_idx_col_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_ind_col_fk FOREIGN KEY (project_id,dbid,tblid,indid) REFERENCES apex_030200.wwv_mig_acc_indexes (project_id,dbid,tblid,indid) ON DELETE CASCADE
);