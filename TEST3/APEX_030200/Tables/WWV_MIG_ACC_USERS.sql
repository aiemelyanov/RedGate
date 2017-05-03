CREATE TABLE apex_030200.wwv_mig_acc_users (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  userid NUMBER NOT NULL,
  username VARCHAR2(400 BYTE),
  date_created DATE,
  date_modified DATE,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_users_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_users_uk1 UNIQUE (project_id,dbid,userid),
  CONSTRAINT wwv_mig_accusrsfk FOREIGN KEY (project_id,dbid) REFERENCES apex_030200.wwv_mig_access (project_id,dbid) ON DELETE CASCADE
);