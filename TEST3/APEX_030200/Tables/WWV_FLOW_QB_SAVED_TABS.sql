CREATE TABLE apex_030200.wwv_flow_qb_saved_tabs (
  "ID" NUMBER NOT NULL,
  "OID" NUMBER NOT NULL,
  cnt NUMBER NOT NULL,
  top VARCHAR2(255 BYTE),
  "LEFT" VARCHAR2(255 BYTE),
  tname VARCHAR2(255 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT pk_wwv_flow_qb_saved_tabs PRIMARY KEY ("ID","OID",cnt),
  FOREIGN KEY ("ID") REFERENCES apex_030200.wwv_flow_qb_saved_query ("ID") ON DELETE CASCADE
);