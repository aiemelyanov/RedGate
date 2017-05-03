CREATE TABLE apex_030200.wwv_flow_flash_chart_series (
  "ID" NUMBER NOT NULL,
  chart_id NUMBER NOT NULL,
  flow_id NUMBER,
  series_seq NUMBER NOT NULL,
  series_name VARCHAR2(255 BYTE) NOT NULL,
  series_query CLOB NOT NULL,
  series_query_type VARCHAR2(255 BYTE) NOT NULL CONSTRAINT wwv_flow_flash_query_type CHECK (series_query_type in ('SQL_QUERY','FUNCTION_RETURNING_SQL_QUERY')),
  series_query_parse_opt VARCHAR2(255 BYTE),
  series_query_no_data_found VARCHAR2(4000 BYTE),
  series_query_row_count_max NUMBER,
  created_on DATE NOT NULL,
  created_by VARCHAR2(255 BYTE) NOT NULL,
  updated_on DATE,
  updated_by VARCHAR2(255 BYTE),
  security_group_id NUMBER NOT NULL,
  CONSTRAINT wwv_flow_flash_chart_series_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_flash_chart_series_fk FOREIGN KEY (chart_id) REFERENCES apex_030200.wwv_flow_flash_charts ("ID") ON DELETE CASCADE
);