CREATE TABLE apex_030200.wwv_flow_web_pg_regions (
  "ID" NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE),
  web_page_id NUMBER,
  display_sequence NUMBER,
  page_position VARCHAR2(30 BYTE) CONSTRAINT wwv_flow_webpgreg_pgpos_ck CHECK (page_position in (
                        'TOP',
                        'BOTTOM',
                        'LEFT',
                        'RIGHT',
                        'CENTER'
                        )),
  display_as VARCHAR2(30 BYTE) CONSTRAINT wwv_flow_webpgreg_dispas_ck CHECK (display_as in (
                        'UNORDERED_LIST',
                        'ORDERED_LIST',
                        'TABS',
                        'BUTTONS',
                        'VERTICAL_LIST',
                        'HORIZONTAL_LIST')),
  heading_text VARCHAR2(4000 BYTE),
  "CONTENT" CLOB,
  footer_text VARCHAR2(4000 BYTE),
  status VARCHAR2(30 BYTE) CONSTRAINT wwv_flow_webpgreg_status_ck CHECK (status in (
                        'AVAILABLE_FOR_OWNER',
                        'NOT_AVAILABLE',
                        'AVAILABLE',
                        'ACL')),
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_webpage_region_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_web_pg_rg_fk FOREIGN KEY (web_page_id) REFERENCES apex_030200.wwv_flow_web_pages ("ID") ON DELETE CASCADE
);