select name || country from city; //without space joines
select name || ',' || country from city //joins with a comma

select concat(upper(name), ',' ,lower(country)) as new_col_name from city // upper and lower case functions with comma seperated and gave new name to the column new_col_name