CREATE TABLE apex_030200.wwv_flow_upg_tab_obsolete (
  table_name VARCHAR2(30 BYTE) NOT NULL,
  obsolete_date DATE NOT NULL,
  change_made VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_upg_tab_obs_done CHECK (change_made in ('Y','N')),
  CONSTRAINT wwv_flow_upg_tab_obs_pk PRIMARY KEY (table_name)
);