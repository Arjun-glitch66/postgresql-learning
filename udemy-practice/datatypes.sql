select (2.0::INTEGER) 
select (2.0::SMALLINT) --range differs
select ('19 november 2026'::DATE)    
SELECT ('2026-11-19'::date) --any formatting of date is allowed 
select ('01:23 PM'::TIME WITHOUT TIME ZONE)
select ('01:23 PM IST'::TIME WITH TIME ZONE)