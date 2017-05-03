CREATE TABLE apex_030200.wwv_mig_rev_queries (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  dbid NUMBER,
  qryid NUMBER(11) NOT NULL,
  security_group_id NUMBER,
  orig_qry_name VARCHAR2(400 BYTE),
  mig_view_name VARCHAR2(400 BYTE),
  orig_sql CLOB,
  mig_sql CLOB,
  "OWNER" VARCHAR2(400 BYTE),
  status VARCHAR2(400 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_flow_rev_qry_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_rev_qry_fk FOREIGN KEY (project_id,dbid,qryid) REFERENCES apex_030200.wwv_mig_acc_queries (project_id,dbid,qryid) ON DELETE CASCADE
);