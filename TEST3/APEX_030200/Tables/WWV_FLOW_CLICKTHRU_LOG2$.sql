CREATE TABLE apex_030200.wwv_flow_clickthru_log2$ (
  clickdate DATE,
  "CATEGORY" VARCHAR2(255 BYTE),
  "ID" NUMBER,
  flow_user VARCHAR2(255 BYTE),
  ip VARCHAR2(30 BYTE),
  security_group_id NUMBER NOT NULL
);