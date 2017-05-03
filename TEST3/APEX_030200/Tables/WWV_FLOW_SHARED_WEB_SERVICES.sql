CREATE TABLE apex_030200.wwv_flow_shared_web_services (
  "ID" NUMBER NOT NULL,
  security_group_id NUMBER NOT NULL,
  flow_id NUMBER,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  url VARCHAR2(4000 BYTE),
  "ACTION" VARCHAR2(4000 BYTE),
  proxy_override VARCHAR2(4000 BYTE),
  soap_envelope CLOB,
  flow_items_comma_delimited CLOB,
  static_parm_01 VARCHAR2(4000 BYTE),
  static_parm_02 VARCHAR2(4000 BYTE),
  static_parm_03 VARCHAR2(4000 BYTE),
  static_parm_04 VARCHAR2(4000 BYTE),
  static_parm_05 VARCHAR2(4000 BYTE),
  static_parm_06 VARCHAR2(4000 BYTE),
  static_parm_07 VARCHAR2(4000 BYTE),
  static_parm_08 VARCHAR2(4000 BYTE),
  static_parm_09 VARCHAR2(4000 BYTE),
  static_parm_10 VARCHAR2(4000 BYTE),
  stylesheet CLOB,
  reference_id NUMBER,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  CONSTRAINT wwv_flow_web_services_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_ws_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);
COMMENT ON COLUMN apex_030200.wwv_flow_shared_web_services.url IS 'SOAP Service URL';
COMMENT ON COLUMN apex_030200.wwv_flow_shared_web_services."ACTION" IS 'SOAP Action';
COMMENT ON COLUMN apex_030200.wwv_flow_shared_web_services.proxy_override IS 'HTTP proxy for SOAP request';
COMMENT ON COLUMN apex_030200.wwv_flow_shared_web_services.soap_envelope IS 'May contain #ITEM_NAME# substitutions';
COMMENT ON COLUMN apex_030200.wwv_flow_shared_web_services.flow_items_comma_delimited IS 'A comma delmited list of flow items contained in the body for example: ITEM1,ITEM2,ITEM3';