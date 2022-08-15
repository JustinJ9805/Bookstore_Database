create table books (
  id int auto_increment,
  title varchar(64),
  subtitle varchar(64),
  isbn13 char(13),
  price float,
  image varchar(128),
  url varchar(128),
  inventory_count INT 
  primary key(id)
  
);
