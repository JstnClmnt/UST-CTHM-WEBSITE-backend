CREATE DATABASE cthmwebsite;

CREATE TABLE USER(
	user_id int not null auto_increment,
    full_name varchar(250) not null,
    username varchar(50) not null,
    password varchar(50) not null,
    PRIMARY KEY(user_id)    
);
INSERT INTO User(full_name,username,password) VALUES('Father Regent','admin','ustcthmadmin');

CREATE TABLE IMAGE(
	img_id int not null AUTO_INCREMENT,
    img_filepath varchar(100),
    description varchar(100),
    PRIMARY KEY(img_id)
);


CREATE TABLE ABOUT(
	post_id int not null auto_increment,
    title varchar(150) not null,
    description text not null,
    img_id integer,
    PRIMARY KEY(post_id),
	FOREIGN KEY(img_id) REFERENCES IMAGE(img_id)
);

INSERT INTO About(title,description) VALUES('Vision','We envision a premiere College of Tourism and Hospitality Management in the country recognized for its outstanding programs, producing world-class professionals');
INSERT INTO About(title,description) VALUES('Mission','We commit ourselves in the formation of top-notch competent, committed, and compassionate Thomasian Tourism and Hospitality professionals for the service of the Church, the nation, and the global community<br><br>');