CREATE TABLE apex_030200.wwv_flow_user_access_log1$ (
  login_name VARCHAR2(255 BYTE) NOT NULL,
  authentication_method VARCHAR2(255 BYTE),
  "APPLICATION" NUMBER,
  "OWNER" VARCHAR2(255 BYTE),
  access_date DATE,
  ip_address VARCHAR2(255 BYTE),
  remote_user VARCHAR2(255 BYTE),
  authentication_result NUMBER,
  custom_status_text VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL
);