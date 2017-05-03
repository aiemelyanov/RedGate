CREATE TABLE apex_030200.wwv_mig_acc_queries (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  qryid NUMBER NOT NULL,
  qrytype VARCHAR2(400 BYTE),
  qryname VARCHAR2(400 BYTE),
  qrysql CLOB,
  datecreated DATE,
  query_lastupdated DATE,
  maxrecords NUMBER,
  odbctimeout NUMBER,
  returnsrecords VARCHAR2(1000 BYTE),
  "UPDATABLE" VARCHAR2(1000 BYTE),
  date_created DATE,
  date_modified DATE,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_qry_uk1 UNIQUE (project_id,dbid,qryid),
  CONSTRAINT wwv_mig_acc_tab_qry_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_qry_dbid_fk FOREIGN KEY (project_id,dbid) REFERENCES apex_030200.wwv_mig_access (project_id,dbid) ON DELETE CASCADE
);