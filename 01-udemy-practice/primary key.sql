create table users(id serial primary key ,username varchar(30)); //serial atuomatically assigns values from 1 ..so no need to specify the integer datatype because serial itself is a dt
insert into users ("username") values('arjun'),('nikhil'),('sai'); //no need to insert the id 
select * from users


create table photos(id serial primary key,url varchar(400),user_id integer REFERENCES users(id)); //userid refers the id column  in the user table 
insert into photos(url,user_id) values ('http://one.jpg',3); 
select * from photos

select * from photos join users on users.id=photos.user_id;  //here we are joining the two tables already they are related by the pforeign key so we retreive where the id of users table ==user_id of photos table 
select * from users join photos on photos.user_id=users.id; //both gives the same output 