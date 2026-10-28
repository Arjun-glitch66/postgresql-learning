create table users(id serial primary key ,username varchar(30)); //serial atuomatically assigns values from 1 ..so no need to specify the integer datatype because serial itself is a dt
insert into users ("username") values('arjun'),('nikhil'),('sai'); //no need to insert the id 
select * from users