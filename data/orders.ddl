create table orders(
    id INT auto_increment,
    user_id INT,
    total float,
    tax float,
    primary key(id),
    foreign key (user_id) references users(id)
);
