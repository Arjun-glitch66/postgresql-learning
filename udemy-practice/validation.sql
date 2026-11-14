create table products (name varchar (20),price int);
insert into products values('Shirt',1500)
alter table products add column product_id int generated always as identity primary key; --auto increment
select * from products
alter table products alter column price set not null
alter table products alter colum price set default 999
insert into products (name) values('Bike') --sets 999 as default 
alter table products add unique (name)
alter table products add unique (name,price)
