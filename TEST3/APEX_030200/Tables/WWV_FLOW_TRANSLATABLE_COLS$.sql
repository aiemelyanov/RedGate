CREATE TABLE apex_030200.wwv_flow_translatable_cols$ (
  "ID" NUMBER NOT NULL,
  table_name VARCHAR2(30 BYTE),
  column_name VARCHAR2(30 BYTE),
  table_pk VARCHAR2(30 BYTE),
  flow_id_column VARCHAR2(30 BYTE),
  page_id_column VARCHAR2(30 BYTE),
  datatype VARCHAR2(30 BYTE),
  template_translatable VARCHAR2(1 BYTE) CONSTRAINT wwv_flow_trans_cols_chk CHECK (template_translatable in ('Y','N')),
  column_description VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_trans_cols_pk PRIMARY KEY ("ID")
);