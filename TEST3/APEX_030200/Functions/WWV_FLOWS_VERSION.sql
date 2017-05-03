CREATE OR REPLACE function apex_030200.wwv_flows_version
return varchar
as
begin
    --
    -- *** NOTE ***  The corresponding date in api.sql will need
    --               to be modified if this version is changed
    return '2009.01.12';
end;
/