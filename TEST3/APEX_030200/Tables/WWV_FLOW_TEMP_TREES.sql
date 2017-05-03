CREATE GLOBAL TEMPORARY TABLE apex_030200.wwv_flow_temp_trees (
  seq NUMBER,
  lev NUMBER,
  "ID" VARCHAR2(4000 BYTE),
  pid VARCHAR2(4000 BYTE),
  kids NUMBER,
  expand VARCHAR2(1 BYTE) DEFAULT 'Y',
  "INDENT" VARCHAR2(4000 BYTE) DEFAULT null,
  "NAME" VARCHAR2(4000 BYTE),
  "LINK" VARCHAR2(4000 BYTE) DEFAULT null,
  a1 VARCHAR2(4000 BYTE) DEFAULT null,
  a2 VARCHAR2(4000 BYTE) DEFAULT null
)
ON COMMIT PRESERVE ROWS;