CREATE TABLE apex_030200.wwv_mig_frm_olb_xmltagtablemap (
  "ID" NUMBER NOT NULL,
  tag_name VARCHAR2(30 BYTE),
  parent_id NUMBER,
  table_name VARCHAR2(30 BYTE),
  foreign_key_name VARCHAR2(30 BYTE),
  created_on DATE,
  created_by VARCHAR2(400 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(400 BYTE),
  CONSTRAINT wwv_mig_olb_xmltagtablemap_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_mig_olb_xttm_table_name_uk UNIQUE (table_name),
  CONSTRAINT wwv_mig_olb_xmltagtablemap_fk FOREIGN KEY (parent_id) REFERENCES apex_030200.wwv_mig_frm_olb_xmltagtablemap ("ID") ON DELETE CASCADE
);