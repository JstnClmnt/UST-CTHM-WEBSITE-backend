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
    img_description varchar(100),
    PRIMARY KEY(img_id)
);
DROP TABLE IMAGE;
INSERT INTO IMAGE(img_filepath,img_description) VALUES('img/aboutUs/orgChart.jpg','Organizational-Chart');
SELECT * FROM IMAGE;
CREATE TABLE ABOUT(
	post_id int not null auto_increment,
    title varchar(150) not null,
    description text,
    img_id integer,
    PRIMARY KEY(post_id),
	FOREIGN KEY(img_id) REFERENCES IMAGE(img_id)
);
SELECT * FROM ABOUT;
DROP TABLE ABOUT;
INSERT INTO About(title,description) VALUES('Mission','We commit ourselves in the formation of top-notch competent, committed, and compassionate Thomasian Tourism and Hospitality professionals for the service of the Church, the nation, and the global community<br><br>');
INSERT INTO About(title,description) VALUES('Vision','We envision a premiere College of Tourism and Hospitality Management in the country recognized for its outstanding programs, producing world-class professionals');
INSERT INTO About(title,description) VALUES('History','The idea of forming an Institution was conceived by the Tourism and HRM Departments during late 1990’s with the strong support and unwavering efforts of the College of Education. The need for establishing an Institute was realized by two departments because of the fast-paced changes and growth of the industry that greatly influenced the tourism and hospitality education. Likewise, by merging the two programs, student would be able to specialize and dedicate themselves in enhancing their knowledge and skills that would respond to the needs of the industry. Series of departmental meetings and brainstorming were conducted with the vision of forming a new academic unit in the University. The idea was presented to the Tourism and HRM Faculty until such time thatthe College of Education decided to merge the programs by having one Department In its initial stage, the Tourism and HRM Departments were temporarily relocated at the College of Education’s Mini-hotel in the year 2002. This was considered as the dry run to assess the viability of separating the departments from College of Education. Three years later, a formal proposal for institutionalization was submitted to the Academic Council. A thorough procedure that included meetings, deliberation and election were carried out. April 28, 2006 marked the establishment of the Tourism and HRM Departments as an Institution. Upon the approval of the College of Regents dated November 19, 2008; by the Academic Senate dated December 16, 2008; and the Board of Trustees dated January 20, 2009, the institute of Tourism and Hospitality Management was finally converted in to the College of Tourism and Hospitality Management. In 2015, both programs of the CTHM (Hotel and Restaurant Management and Travel Management) received the coveted Center of Excellence distinction from the Commission on Higher Education.');
INSERT INTO About(title,description) VALUES('Program Educational Objectives','                                        <b>A few years after graduation, the graduates of the College of Tourism and Hospitality of the University of Santo Tomas are expected to:</b><br><br>
                                        <ol>
                                            <li>Employ a solid understanding and the need for continuous upgrading of the managerial and operational competencies of tourism and hospitality through reflective practice consistent with the global standards and Christian values;</li>
                                            <li>Assess industry-academe trends and issues to generate research undertakings in tourism and hospitality through the basis of specific standards and criteria within personal, professional, societal, and ethical context;</li>
                                            <li>Practice effective interpersonal and communication skills through collaboration, use of information technology and respect for cultural diversity; and</li>
                                            <li>Exhibit Christian leadership promoting life advocacies through project implementation for social and economic transformation.</li>
                                        </ol>');
INSERT INTO ABOUT(title,img_id) VALUES('Organizational Chart',1);

SELECT * FROM ABOUT a LEFT JOIN IMAGE i on i.img_id=a.img_id ORDER BY post_id;
                                        
                                        
CREATE TABLE COURSES(
	course_id int not null auto_increment,
    course_title varchar(150),
    PRIMARY KEY(course_id)
);

INSERT INTO COURSES(course_title) VALUES('Tourism Management');
INSERT INTO COURSES(course_title) VALUES('Hospitality Management');

CREATE TABLE MAJOR(
	major_id int not null auto_increment,
    major_name varchar(150) not null,
    course_id int,
    PRIMARY KEY(major_id),
    FOREIGN KEY(course_id) REFERENCES COURSES(course_id)
);
INSERT INTO MAJOR(major_name,course_id) VALUES('Travel Operations and Service Management',1);
INSERT INTO MAJOR(major_name,course_id) VALUES('Recreation and Leisure Management',1);
INSERT INTO MAJOR(major_name,course_id) VALUES('Culinary Entrepreneurship',2);
INSERT INTO MAJOR(major_name,course_id) VALUES('Hospitality Leadership',2);
SELECT c.course_id,c.course_title,m.major_id,m.major_name FROM Courses c, Major m WHERE m.course_id=c.course_id;
CREATE TABLE PROGRAM_INFO_CATEGORY(
	pic_id int not null auto_increment,
    pic_title varchar(200),
    PRIMARY KEY(pic_id)
);
SELECT * FROM program_info_category;

INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Introduction');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Program Description');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Program Intended Learning Outcomes');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Career Opportunities');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Curriculum');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Career Opportunities');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Curriculum');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Student Activities');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Facilities');