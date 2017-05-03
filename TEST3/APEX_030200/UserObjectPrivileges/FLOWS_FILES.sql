GRANT EXECUTE ON apex_030200.wwv_flow TO flows_files;
GRANT SELECT ON apex_030200.wwv_flow_companies TO flows_files;
GRANT REFERENCES(PROVISIONING_COMPANY_ID) ON apex_030200.wwv_flow_companies TO flows_files;
GRANT EXECUTE ON apex_030200.wwv_flow_file_api TO flows_files;
GRANT EXECUTE ON apex_030200.wwv_flow_file_object_id TO flows_files;
GRANT EXECUTE ON apex_030200.wwv_flow_id TO flows_files;
GRANT EXECUTE ON apex_030200.wwv_flow_security TO flows_files;