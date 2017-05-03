CREATE TABLE apex_030200.wwv_flow_version$ (
  seq NUMBER NOT NULL,
  date_applied DATE NOT NULL,
  major_version NUMBER NOT NULL,
  minor_version NUMBER NOT NULL,
  patch_version NUMBER NOT NULL,
  banner VARCHAR2(255 BYTE) NOT NULL,
  comments VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_version$_pk PRIMARY KEY (seq)
);