CREATE TABLE photos (
id SERIAL PRIMARY KEY,
url VARCHAR(200),
user_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);
 
INSERT INTO photos (url, user_id)
VALUES
('http:/one.jpg', 3),
('http:/two.jpg', 1),
('http:/25.jpg', 1),
('http:/36.jpg', 1),
('http:/754.jpg', 2),
('http:/35.jpg', 3),
('http:/256.jpg', 2);

//user table already has values 1,arjun 2,nikhil 3,sai where 1,2,3 are primary keys and the fk in photos are referring them 

delete from users where id=1 //on cascade means when the id in users is deleted the referreing foreign keys will also be deleted from photos which means tewo.jpg 25.jpg 36.jpg ar edeleted from photos as well as the 1,arjun from users is deleted 
select * from photos
select * from users




#####################
DROP TABLE PHOTOS
CREATE TABLE photos (
id SERIAL PRIMARY KEY,
url VARCHAR(200),
user_id INTEGER REFERENCES users(id) ON DELETE SET NULL
);
 
INSERT INTO photos (url, user_id)
VALUES
('http:/one.jpg', 3),
('http:/754.jpg', 2),
('http:/35.jpg', 3),
('http:/256.jpg', 2);

delete from users where id=3 //this will delte 3,sai from users and also the foregn key which referred the id 3 their user_id column in photos will become null
select * from photos //one.jpg and 256.jpg user_id is null 