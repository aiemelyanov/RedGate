CREATE TABLE apex_030200.wwv_flow_page_generic_attr (
  "ID" NUMBER NOT NULL,
  region_id NUMBER NOT NULL,
  attribute_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  attribute_value CLOB,
  CONSTRAINT wwv_flow_page_generic_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_genattr_to_region_fk FOREIGN KEY (region_id) REFERENCES apex_030200.wwv_flow_page_plugs ("ID") ON DELETE CASCADE
);