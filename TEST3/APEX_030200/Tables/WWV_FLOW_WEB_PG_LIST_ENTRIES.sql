CREATE TABLE apex_030200.wwv_flow_web_pg_list_entries (
  "ID" NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE),
  region_id NUMBER,
  entry_name VARCHAR2(4000 BYTE),
  entry_link VARCHAR2(4000 BYTE),
  display_sequence NUMBER,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_webpglistentry_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_web_pg_le_fk FOREIGN KEY (region_id) REFERENCES apex_030200.wwv_flow_web_pg_regions ("ID") ON DELETE CASCADE
);