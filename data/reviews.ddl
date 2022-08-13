create table reviews(
    id INT auto_increment,
    book_id INT,
    review VARCHAR(255),
    user_id INT,
    stars INT,
    primary key(id),
    foreign key (book_id) references books(id),
    foreign key (user_id) references users(id)
);