CREATE TABLE apex_030200.wwv_flow_query_definition (
  "ID" NUMBER NOT NULL,
  region_id NUMBER NOT NULL,
  flow_id NUMBER,
  reference_id NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT query_definition_pk PRIMARY KEY ("ID"),
  CONSTRAINT query_def_to_region_fk FOREIGN KEY (region_id) REFERENCES apex_030200.wwv_flow_page_plugs ("ID") ON DELETE CASCADE
);