CREATE TABLE apex_030200.wwv_flow_worksheet_categories (
  "ID" NUMBER NOT NULL,
  worksheet_id NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  base_cat_id NUMBER,
  application_user VARCHAR2(255 BYTE),
  "NAME" VARCHAR2(255 BYTE),
  display_sequence NUMBER,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_worksheet_cat_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_worksheet_cat_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);