CREATE DATABASE cthmwebsite;

CREATE TABLE USER(
	user_id int not null auto_increment,
    full_name varchar(250) not null,
    username varchar(50) not null,
    password varchar(50) not null,
    PRIMARY KEY(user_id)    
);
INSERT INTO User(full_name,username,password) VALUES('Father Regent','admin','ustcthmadmin');
