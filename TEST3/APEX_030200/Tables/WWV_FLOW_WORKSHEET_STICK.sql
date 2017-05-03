CREATE TABLE apex_030200.wwv_flow_worksheet_stick (
  "ID" NUMBER NOT NULL,
  worksheet_id NUMBER NOT NULL,
  row_id NUMBER NOT NULL,
  "CONTENT" CLOB,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_worksheet_stick_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_worksheet_stick_fk FOREIGN KEY (row_id) REFERENCES apex_030200.wwv_flow_worksheet_rows ("ID") ON DELETE CASCADE
);