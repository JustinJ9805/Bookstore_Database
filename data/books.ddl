create table books (
  book_id int auto_increment,
  title varchar(64),
  subtitle varchar(64),
  isbn13 char(13),
  price float,
  image varchar(128),
  url varchar(128),
  primary key(book_id)
);
