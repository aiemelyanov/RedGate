CREATE TABLE apex_030200.wwv_flow_button_templates (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  template_name VARCHAR2(255 BYTE) NOT NULL,
  "TEMPLATE" CLOB NOT NULL,
  security_group_id NUMBER NOT NULL,
  reference_id NUMBER,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  theme_id NUMBER,
  theme_class_id NUMBER,
  translate_this_template VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_button_trans_temp CHECK (translate_this_template in ('Y','N')),
  template_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_button_temp_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_buttont_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);