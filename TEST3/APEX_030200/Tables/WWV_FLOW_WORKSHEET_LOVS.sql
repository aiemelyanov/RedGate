CREATE TABLE apex_030200.wwv_flow_worksheet_lovs (
  "ID" NUMBER NOT NULL,
  worksheet_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_worksheet_lovs_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_worksheet_lovs_uk UNIQUE (worksheet_id,"NAME"),
  CONSTRAINT wwv_flow_worksheet_lovs_fk FOREIGN KEY (worksheet_id) REFERENCES apex_030200.wwv_flow_worksheets ("ID") ON DELETE CASCADE
);