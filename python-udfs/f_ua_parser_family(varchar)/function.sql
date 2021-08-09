/* UDF:

Purpose: This function demos packaging of an external library e.g. to extract from the user_agent string.

2021-08-08: written by rjvgupta
*/
--
CREATE OR REPLACE FUNCTION parse_ua_family (ua VARCHAR)
RETURNS VARCHAR IMMUTABLE AS $$
  from ua_parser import user_agent_parser
  return user_agent_parser.ParseUserAgent(ua)['family']
$$ LANGUAGE plpythonu;
