create table books (
  title varchar(64),
  subtitle varchar(64),
  isbn13 char(13),
  price float,
  image varchar(128),
  url varchar(128),
  id int auto_increment,
  primary key(id)
);
