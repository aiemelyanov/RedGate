CREATE OR REPLACE FORCE VIEW apex_030200.wwv_flow_minutes (minute_value) AS
select i-1 from wwv_flow_dual100 where i < 61;