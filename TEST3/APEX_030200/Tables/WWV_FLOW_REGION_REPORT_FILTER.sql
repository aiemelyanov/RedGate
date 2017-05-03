CREATE TABLE apex_030200.wwv_flow_region_report_filter (
  "ID" NUMBER NOT NULL,
  region_id NUMBER NOT NULL,
  condition_type VARCHAR2(255 BYTE) NOT NULL,
  cond_expression1 VARCHAR2(4000 BYTE) NOT NULL,
  cond_expression2 VARCHAR2(4000 BYTE) NOT NULL,
  compound_operator VARCHAR2(4000 BYTE) CONSTRAINT valid_rep_compound_operator CHECK (compound_operator in (
                      		             'and',
                      		             'or',
                      		             'not'
                                		)),
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT report_filter_pk PRIMARY KEY ("ID"),
  FOREIGN KEY (region_id) REFERENCES apex_030200.wwv_flow_page_plugs ("ID") ON DELETE CASCADE
);