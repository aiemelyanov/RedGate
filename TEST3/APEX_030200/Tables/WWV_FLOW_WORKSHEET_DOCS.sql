CREATE TABLE apex_030200.wwv_flow_worksheet_docs (
  "ID" NUMBER NOT NULL,
  row_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  description VARCHAR2(4000 BYTE),
  "CONTENT" BLOB,
  mime_type VARCHAR2(48 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_worksheet_doc_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_worksheet_doc_fk FOREIGN KEY (row_id) REFERENCES apex_030200.wwv_flow_worksheet_rows ("ID") ON DELETE CASCADE
);