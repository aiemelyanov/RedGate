CREATE TABLE apex_030200.wwv_flow_messages$ (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  message_language VARCHAR2(50 BYTE) NOT NULL,
  message_text VARCHAR2(4000 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  message_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_messages_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_messages_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);