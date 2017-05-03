CREATE TABLE apex_030200.wwv_flow_worksheet_col_groups (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  worksheet_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  description VARCHAR2(4000 BYTE),
  display_sequence NUMBER,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_worksheet_col_grps_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_worksheet_col_grps_uk UNIQUE (worksheet_id,"NAME"),
  CONSTRAINT wwv_flow_worksheet_col_grp_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE,
  CONSTRAINT wwv_flow_worksheet_col_grws_fk FOREIGN KEY (worksheet_id) REFERENCES apex_030200.wwv_flow_worksheets ("ID") ON DELETE CASCADE
);