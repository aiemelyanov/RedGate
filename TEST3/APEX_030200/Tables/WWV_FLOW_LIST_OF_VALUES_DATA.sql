CREATE TABLE apex_030200.wwv_flow_list_of_values_data (
  "ID" NUMBER NOT NULL,
  lov_id NUMBER,
  flow_id NUMBER,
  lov_disp_sequence NUMBER NOT NULL,
  lov_disp_value VARCHAR2(4000 BYTE) NOT NULL,
  lov_return_value VARCHAR2(4000 BYTE) NOT NULL,
  lov_template VARCHAR2(4000 BYTE),
  lov_disp_cond_type VARCHAR2(255 BYTE),
  lov_disp_cond VARCHAR2(4000 BYTE),
  lov_disp_cond2 VARCHAR2(4000 BYTE),
  required_patch NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  lov_data_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_lov_data_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_lov_data_fk FOREIGN KEY (lov_id) REFERENCES apex_030200.wwv_flow_lists_of_values$ ("ID") ON DELETE CASCADE
);