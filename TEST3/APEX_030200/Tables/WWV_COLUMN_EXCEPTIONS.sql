CREATE TABLE apex_030200.wwv_column_exceptions (
  table_name VARCHAR2(40 BYTE) NOT NULL,
  column_name VARCHAR2(40 BYTE) NOT NULL,
  obsolete_date DATE DEFAULT null,
  CONSTRAINT col_exceptions_pk PRIMARY KEY (table_name,column_name)
);