CREATE TABLE apex_030200.wwv_flow_pick_page_views (
  "ID" NUMBER NOT NULL,
  pg_views NUMBER NOT NULL,
  pg_views_desc VARCHAR2(255 BYTE) NOT NULL,
  CONSTRAINT wwv_flow_pick_p_vs_pk PRIMARY KEY ("ID")
);