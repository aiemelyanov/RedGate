CREATE TABLE apex_030200.wwv_flow_workspace_req_size (
  "ID" NUMBER NOT NULL,
  request_type VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_wksp_request_type CHECK (request_type in ('N','C')),
  req_size VARCHAR2(30 BYTE) NOT NULL,
  display VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_wksp_req_size_display CHECK (display in ('Y','N')),
  default_size VARCHAR2(1 BYTE) NOT NULL CONSTRAINT wwv_flow_wksp_req_size_default CHECK (default_size in ('Y','N')),
  CONSTRAINT wwv_flow_workspace_req_size_pk PRIMARY KEY ("ID")
);