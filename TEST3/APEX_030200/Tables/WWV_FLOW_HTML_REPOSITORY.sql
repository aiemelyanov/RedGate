CREATE TABLE apex_030200.wwv_flow_html_repository (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  html_tag VARCHAR2(270 BYTE) NOT NULL,
  html_name VARCHAR2(255 BYTE) NOT NULL,
  upper_html_name VARCHAR2(255 BYTE) NOT NULL,
  file_object_id NUMBER,
  notes VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_html_repo_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_html_rep_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);