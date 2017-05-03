CREATE TABLE apex_030200.wwv_flow_upg_tab_name_changes (
  old_table_name VARCHAR2(30 BYTE) NOT NULL,
  new_table_name VARCHAR2(30 BYTE) NOT NULL,
  change_date DATE NOT NULL,
  change_made VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_upg_tab_name_chg_done CHECK (change_made in ('Y','N')),
  CONSTRAINT wwv_flow_upg_tab_name_chng_pk PRIMARY KEY (old_table_name),
  CONSTRAINT wwv_flow_upg_tab_name_chng_uk UNIQUE (new_table_name)
);