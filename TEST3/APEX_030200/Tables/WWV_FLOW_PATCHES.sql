CREATE TABLE apex_030200.wwv_flow_patches (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  patch_name VARCHAR2(255 BYTE) NOT NULL,
  patch_status VARCHAR2(30 BYTE) CONSTRAINT wwv_flow_patch_valid_status CHECK (patch_status in ('INCLUDE','EXCLUDE')),
  security_group_id NUMBER NOT NULL,
  default_on_export VARCHAR2(30 BYTE),
  attribute1 VARCHAR2(255 BYTE),
  attribute2 VARCHAR2(255 BYTE),
  attribute3 VARCHAR2(255 BYTE),
  attribute4 VARCHAR2(255 BYTE),
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  patch_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_patches_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_patches_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);