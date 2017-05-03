CREATE TABLE apex_030200.wwv_flow_page_plug_templates (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  page_plug_template_name VARCHAR2(255 BYTE) NOT NULL,
  "TEMPLATE" CLOB NOT NULL,
  template2 CLOB,
  template3 CLOB,
  plug_table_bgcolor VARCHAR2(255 BYTE),
  plug_heading_bgcolor VARCHAR2(255 BYTE),
  plug_font_size VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  reference_id NUMBER,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  theme_id NUMBER,
  theme_class_id NUMBER,
  translate_this_template VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_region_trans_temp CHECK (translate_this_template in ('Y','N')),
  template_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_plug_temp_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_plug_temp_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);