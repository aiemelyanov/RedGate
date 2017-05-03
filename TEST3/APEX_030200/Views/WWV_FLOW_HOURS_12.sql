CREATE OR REPLACE FORCE VIEW apex_030200.wwv_flow_hours_12 (hour_value) AS
select i from wwv_flow_dual100 where i < 13;