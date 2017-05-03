CREATE TABLE apex_030200.wwv_flow_hnt_lov_data (
  "ID" NUMBER NOT NULL,
  column_id NUMBER NOT NULL,
  lov_disp_sequence NUMBER NOT NULL,
  lov_disp_value VARCHAR2(4000 BYTE) NOT NULL,
  lov_return_value VARCHAR2(4000 BYTE) NOT NULL,
  last_updated_by VARCHAR2(255 BYTE) NOT NULL,
  last_updated_on DATE NOT NULL,
  CONSTRAINT wwv_flow_hnt_lov_data_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_hnt_lov_data_col_fk FOREIGN KEY (column_id) REFERENCES apex_030200.wwv_flow_hnt_column_info (column_id) ON DELETE CASCADE
);