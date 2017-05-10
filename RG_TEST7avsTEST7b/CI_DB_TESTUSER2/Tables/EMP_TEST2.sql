CREATE TABLE ci_db_testuser2.emp_test2 (
  "ID" NUMBER(8,2) NOT NULL,
  first_name VARCHAR2(100 BYTE) NOT NULL,
  last_name VARCHAR2(250 BYTE),
  salary NUMBER(5,2),
  CONSTRAINT emp_test2_pk PRIMARY KEY ("ID")
);