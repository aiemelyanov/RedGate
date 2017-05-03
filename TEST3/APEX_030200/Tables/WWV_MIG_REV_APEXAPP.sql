CREATE TABLE apex_030200.wwv_mig_rev_apexapp (
  "ID" NUMBER NOT NULL,
  project_id NUMBER NOT NULL,
  dbid NUMBER NOT NULL,
  flow_id NUMBER(11) NOT NULL,
  security_group_id NUMBER NOT NULL,
  page_id NUMBER NOT NULL,
  list_template_name VARCHAR2(400 BYTE),
  list_item_type VARCHAR2(100 BYTE),
  list_item_icon VARCHAR2(400 BYTE),
  "OWNER" VARCHAR2(400 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_flow_rev_apex_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_rev_apex_fk FOREIGN KEY (project_id,dbid) REFERENCES apex_030200.wwv_mig_access (project_id,dbid) ON DELETE CASCADE
);