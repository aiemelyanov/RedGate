CREATE TABLE apex_030200.wwv_mig_acc_pages (
  "ID" NUMBER NOT NULL,
  project_id NUMBER,
  security_group_id NUMBER,
  dbid NUMBER NOT NULL,
  pageid NUMBER(11) NOT NULL,
  pagename VARCHAR2(400 BYTE),
  datecreated DATE,
  datemodified DATE,
  pagetype NUMBER,
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_acc_page_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_acc_page_fk FOREIGN KEY (project_id,dbid) REFERENCES apex_030200.wwv_mig_access (project_id,dbid) ON DELETE CASCADE
);