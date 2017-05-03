CREATE TABLE apex_030200.wwv_flow_collections$ (
  "ID" NUMBER NOT NULL,
  session_id NUMBER NOT NULL,
  user_id VARCHAR2(255 BYTE) NOT NULL,
  flow_id NUMBER NOT NULL,
  collection_name VARCHAR2(255 BYTE) NOT NULL,
  collection_changed VARCHAR2(10 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_collections_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_collections_uk UNIQUE (session_id,user_id,flow_id,collection_name,security_group_id),
  CONSTRAINT wwv_flow_collection_fk FOREIGN KEY (session_id) REFERENCES apex_030200.wwv_flow_sessions$ ("ID") ON DELETE CASCADE
);