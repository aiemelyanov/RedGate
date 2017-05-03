CREATE TABLE apex_030200.wwv_flow_worksheet_links (
  "ID" NUMBER NOT NULL,
  worksheet_id NUMBER NOT NULL,
  row_id NUMBER NOT NULL,
  link_name VARCHAR2(255 BYTE) NOT NULL,
  url VARCHAR2(4000 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_worksheet_links_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_worksheet_links_fk FOREIGN KEY (row_id) REFERENCES apex_030200.wwv_flow_worksheet_rows ("ID") ON DELETE CASCADE
);