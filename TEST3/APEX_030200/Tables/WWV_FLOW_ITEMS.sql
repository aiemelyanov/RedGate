CREATE TABLE apex_030200.wwv_flow_items (
  "ID" NUMBER NOT NULL,
  flow_id NUMBER NOT NULL,
  "NAME" VARCHAR2(255 BYTE) NOT NULL,
  name_length NUMBER,
  data_type VARCHAR2(30 BYTE) CONSTRAINT valid_fitems_datatype CHECK (data_type in (
                               'VARCHAR',
                               'NUMBER',
                               'DATE')),
  is_persistent VARCHAR2(1 BYTE) CONSTRAINT valid_fitems_ispers CHECK (is_Persistent in ('Y','N','U','A')),
  protection_level VARCHAR2(1 BYTE) CONSTRAINT valid_fitems_protection_level CHECK (protection_level in ('N','B','P','S','I')),
  required_patch NUMBER,
  security_group_id NUMBER NOT NULL,
  last_updated_by VARCHAR2(255 BYTE),
  last_updated_on DATE,
  item_comment VARCHAR2(4000 BYTE),
  CONSTRAINT wwv_flow_items_pk PRIMARY KEY ("ID"),
  CONSTRAINT wwv_flow_items_fk FOREIGN KEY (flow_id) REFERENCES apex_030200.wwv_flows ("ID") ON DELETE CASCADE
);