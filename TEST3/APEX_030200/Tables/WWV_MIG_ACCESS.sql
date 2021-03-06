CREATE TABLE apex_030200.wwv_mig_access (
  "ID" NUMBER NOT NULL,
  project_id NUMBER NOT NULL,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  dbname VARCHAR2(400 BYTE),
  dbsize VARCHAR2(100 BYTE),
  dbpathname VARCHAR2(1000 BYTE),
  dbuser VARCHAR2(400 BYTE),
  dbpassword VARCHAR2(400 BYTE),
  database_schema VARCHAR2(400 BYTE),
  isappdb NUMBER(1),
  isattacheddb NUMBER(1),
  convertdb NUMBER(1),
  jetversion FLOAT,
  accessversion VARCHAR2(400 BYTE),
  "BUILD" NUMBER,
  collatingorder NUMBER(10),
  querytimeout NUMBER(10),
  startupform VARCHAR2(1000 BYTE),
  startupshowstatusbar NUMBER(3),
  linkdbid NUMBER,
  date_created DATE,
  date_modified DATE,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  UNIQUE (dbid),
  CONSTRAINT wwv_mig_access_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_access_uk1 UNIQUE (project_id,dbid),
  CONSTRAINT wwv_mig_acc_fk FOREIGN KEY (project_id) REFERENCES apex_030200.wwv_mig_projects ("ID") ON DELETE CASCADE
);