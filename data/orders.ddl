create table orders(
    id INT auto_increment,
    user_id INT,
    primary key(id),
    foreign key (user_id) references users(id)
);