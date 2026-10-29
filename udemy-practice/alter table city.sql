ALTER TABLE CITY add column POP INTEGER, add column AREA INTEGER;
UPDATE city SET pop=4,area=5 WHERE name='Chennai';
UPDATE city SET pop=4,area=6 WHERE name='Mumbai';
select name, CAST(pop AS NUMERIC)/area AS density from CITY ; //CONVERTS into decimal division result , if cast is not used we will get all 0 becuase its integer division so 0.6=0 