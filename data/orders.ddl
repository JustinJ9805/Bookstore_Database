create table orders(
    order_id INT auto_increment,
    user_id INT,
    primary key(order_id),
    foreign key (user_id) references users(user_id)
);