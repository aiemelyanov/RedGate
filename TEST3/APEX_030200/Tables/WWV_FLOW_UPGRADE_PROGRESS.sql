CREATE TABLE apex_030200.wwv_flow_upgrade_progress (
  upgrade_id NUMBER,
  upgrade_date DATE,
  upgrade_sequence NUMBER,
  upgrade_action VARCHAR2(4000 BYTE),
  upgrade_error VARCHAR2(4000 BYTE),
  upgrade_command VARCHAR2(4000 BYTE)
);