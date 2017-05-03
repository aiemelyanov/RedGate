CREATE TABLE apex_030200.wwv_flow_random_images (
  "ID" NUMBER NOT NULL,
  image_name VARCHAR2(4000 BYTE) NOT NULL,
  image_code VARCHAR2(10 BYTE) NOT NULL,
  blob_content BLOB NOT NULL,
  CONSTRAINT wwv_flow_random_images_pk PRIMARY KEY ("ID")
);