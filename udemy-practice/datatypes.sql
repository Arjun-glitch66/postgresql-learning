select (2.0::INTEGER) 
select (2.0::SMALLINT) --range differs
select ('19 november 2026'::DATE)    
SELECT ('2026-11-19'::date) --any formatting of date is allowed 
select ('01:23 PM'::TIME WITHOUT TIME ZONE)
select ('01:23 PM IST'::TIME WITH TIME ZONE)
select ('1D 20H 30 M 45 S'::INTERVAL)-('1D'::INTERVAL)  
select ('NOV-10-2026 1:23 AM IST'::TIMESTAMP WITH TIME ZONE)-('1D'::INTERVAL)