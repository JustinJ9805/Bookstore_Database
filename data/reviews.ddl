create table reviews(
    id INT auto_increment,
    book_id INT,
    user_id INT,
    stars INT,
    review VARCHAR(255),
    primary key(id),
    foreign key (book_id) references books(id),
    foreign key (user_id) references users(id)
);
