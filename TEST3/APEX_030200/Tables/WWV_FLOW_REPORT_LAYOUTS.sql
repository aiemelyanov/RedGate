CREATE TABLE apex_030200.wwv_flow_report_layouts (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  report_layout_name VARCHAR2(4000 BYTE) NOT NULL,
  report_layout_type VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_report_layout_type CHECK (report_layout_type in (
                                          'RTF_FILE',
                                          'XSL_FILE',
                                          'XSL_GENERIC'
                                      )),
  page_template CLOB NOT NULL,
  xslfo_column_heading_template VARCHAR2(4000 BYTE),
  xslfo_column_template VARCHAR2(4000 BYTE),
  xslfo_column_template_width VARCHAR2(4000 BYTE),
  reference_id NUMBER,
  security_group_id NUMBER NOT NULL,
  created_on DATE,
  created_by VARCHAR2(255 BYTE),
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  report_layout_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_report_layouts_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_report_layoutse_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);