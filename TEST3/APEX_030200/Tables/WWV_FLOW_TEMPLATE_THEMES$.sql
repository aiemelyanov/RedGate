CREATE TABLE apex_030200.wwv_flow_template_themes$ (
  "ID" NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE),
  required_css VARCHAR2(255 BYTE),
  CONSTRAINT wwv_fl_tmp_thm_pk PRIMARY KEY ("ID")
);