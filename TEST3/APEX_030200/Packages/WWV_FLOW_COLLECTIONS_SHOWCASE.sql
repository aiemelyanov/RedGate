CREATE OR REPLACE package apex_030200.wwv_flow_collections_showcase
as

g_flow_id      number;

procedure create_flow (
    p_security_group_id     in varchar2,
    p_schema                in varchar2)
    ;
end wwv_flow_collections_showcase;
/