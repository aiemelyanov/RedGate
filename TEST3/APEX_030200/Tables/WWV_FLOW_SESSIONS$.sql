CREATE TABLE apex_030200.wwv_flow_sessions$ (
  "ID" NUMBER NOT NULL,
  session_id_hashed VARCHAR2(255 BYTE) NOT NULL,
  cookie_session_id NUMBER,
  created_by VARCHAR2(255 BYTE),
  created_on DATE,
  "COOKIE" VARCHAR2(255 BYTE),
  on_new_instance_fired_for VARCHAR2(4000 BYTE),
  passed_sec_checks VARCHAR2(4000 BYTE),
  failed_sec_checks VARCHAR2(4000 BYTE),
  security_group_id NUMBER NOT NULL,
  last_changed DATE,
  expires_on DATE,
  ip_address VARCHAR2(2000 BYTE),
  remote_addr VARCHAR2(255 BYTE),
  CONSTRAINT wwv_flow_sessions_pk PRIMARY KEY ("ID")
);