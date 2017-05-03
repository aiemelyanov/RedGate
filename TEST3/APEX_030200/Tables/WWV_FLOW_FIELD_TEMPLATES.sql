CREATE TABLE apex_030200.wwv_flow_field_templates (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  theme_id NUMBER,
  theme_class_id NUMBER,
  template_name VARCHAR2(255 BYTE) NOT NULL,
  template_body1 VARCHAR2(4000 BYTE),
  template_body2 VARCHAR2(4000 BYTE),
  reference_id NUMBER,
  on_error_before_label VARCHAR2(4000 BYTE),
  on_error_after_label VARCHAR2(4000 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(255 BYTE),
  translate_this_template VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_field_trans_temp CHECK (translate_this_template in ('Y','N')),
  template_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_field_template_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_field_temp_f_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);