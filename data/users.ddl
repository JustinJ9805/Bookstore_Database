create table users (
  id int auto_increment,
  name varchar(32),
  username varchar(32),
  email varchar(32),
  phone char(14),
  website varchar(64),
  street varchar(32),
  suite varchar(32),
  city varchar(32),
  zipcode char(10),
  geo varchar(32),
  company_name varchar(32),
  company_catchPhrase varchar(32),
  company_bs varchar(32),
  primary key(id)
);
