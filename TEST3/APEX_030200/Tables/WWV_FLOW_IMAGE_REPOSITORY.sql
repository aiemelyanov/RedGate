CREATE TABLE apex_030200.wwv_flow_image_repository (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER,
  image_name VARCHAR2(255 BYTE) NOT NULL,
  image_tag VARCHAR2(270 BYTE) NOT NULL,
  upper_image_name VARCHAR2(255 BYTE) NOT NULL,
  file_object_id NUMBER,
  national_language VARCHAR2(30 BYTE),
  height NUMBER,
  width NUMBER,
  notes VARCHAR2(4000 BYTE),
  is_on_filesystem VARCHAR2(1 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_image_repo_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_img_rep_fk FOREIGN KEY (security_group_id) REFERENCES apex_030200.wwv_flow_companies (provisioning_company_id) ON DELETE CASCADE
);