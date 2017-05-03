CREATE TABLE apex_030200.wwv_flow_worksheet_lov_entries (
  "ID" NUMBER NOT NULL,
  worksheet_id NUMBER NOT NULL,
  lov_id NUMBER NOT NULL,
  display_sequence NUMBER NOT NULL,
  entry_text VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_worksheet_lov_ent_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_ws_lov_ents_uk UNIQUE (lov_id,entry_text),
  CONSTRAINT wwv_flow_worksheet_lov_ent_fk FOREIGN KEY (worksheet_id) REFERENCES apex_030200.wwv_flow_worksheets ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_worksheet_lov_ent_fk2 FOREIGN KEY (lov_id) REFERENCES apex_030200.wwv_flow_worksheet_lovs ("ID") ON DELETE CASCADE
);