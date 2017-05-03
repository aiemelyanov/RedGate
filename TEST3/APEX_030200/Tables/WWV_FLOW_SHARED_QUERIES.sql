CREATE TABLE apex_030200.wwv_flow_shared_queries (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  security_group_id NUMBER NOT NULL,
  query_text CLOB NOT NULL,
  xml_structure VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_shared_qry_xml_strc CHECK (xml_structure in (
                                 'STANDARD',
                                 'APEX'
                             )),
  report_layout_id NUMBER,
  "FORMAT" VARCHAR2(255 BYTE) CONSTRAINT wwv_flow_shared_qry_format CHECK ("FORMAT" in (
                                 'PDF',
                                 'RTF',
                                 'XLS',
                                 'HTM',
                                 'XML'
                             )),
  format_item VARCHAR2(4000 BYTE),
  output_file_name VARCHAR2(4000 BYTE),
  content_disposition VARCHAR2(255 BYTE) CONSTRAINT shared_qry_content_disp CHECK (content_disposition in (
                                  'INLINE',
                                  'ATTACHMENT'
                              )),
  document_header VARCHAR2(255 BYTE) CONSTRAINT shared_qry_header CHECK (document_header in (
                                 'SERVER',
                                 'APEX'
                             )),
  xml_items VARCHAR2(4000 BYTE),
  created_on DATE,
  created_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  last_updated_by VARCHAR2(255 BYTE),
  CONSTRAINT wwv_flow_shared_qry_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_shdqry_flow_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);