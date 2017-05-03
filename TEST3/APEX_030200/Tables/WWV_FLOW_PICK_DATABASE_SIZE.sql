CREATE TABLE apex_030200.wwv_flow_pick_database_size (
  "ID" NUMBER NOT NULL,
  db_size VARCHAR2(30 BYTE) NOT NULL,
  db_size_desc VARCHAR2(255 BYTE) NOT NULL,
  CONSTRAINT wwv_flow_pick_db_size_pk PRIMARY KEY ("ID")
);