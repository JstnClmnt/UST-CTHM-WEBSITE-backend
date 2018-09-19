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
INSERT INTO About(title,description) VALUES('Mission','We commit ourselves in the formation of top-notch competent, committed, and compassionate Thomasian Tourism and Hospitality professionals for the service of the Church, the nation, and the global community<br></br><br></br>');
INSERT INTO About(title,description) VALUES('Vision','We envision a premiere College of Tourism and Hospitality Management in the country recognized for its outstanding programs, producing world-class professionals');
INSERT INTO About(title,description) VALUES('History','The idea of forming an Institution was conceived by the Tourism and HRM Departments during late 1990’s with the strong support and unwavering efforts of the College of Education. The need for establishing an Institute was realized by two departments because of the fast-paced changes and growth of the industry that greatly influenced the tourism and hospitality education. Likewise, by merging the two programs, student would be able to specialize and dedicate themselves in enhancing their knowledge and skills that would respond to the needs of the industry. Series of departmental meetings and brainstorming were conducted with the vision of forming a new academic unit in the University. The idea was presented to the Tourism and HRM Faculty until such time thatthe College of Education decided to merge the programs by having one Department In its initial stage, the Tourism and HRM Departments were temporarily relocated at the College of Education’s Mini-hotel in the year 2002. This was considered as the dry run to assess the viability of separating the departments from College of Education. Three years later, a formal proposal for institutionalization was submitted to the Academic Council. A thorough procedure that included meetings, deliberation and election were carried out. April 28, 2006 marked the establishment of the Tourism and HRM Departments as an Institution. Upon the approval of the College of Regents dated November 19, 2008; by the Academic Senate dated December 16, 2008; and the Board of Trustees dated January 20, 2009, the institute of Tourism and Hospitality Management was finally converted in to the College of Tourism and Hospitality Management. In 2015, both programs of the CTHM (Hotel and Restaurant Management and Travel Management) received the coveted Center of Excellence distinction from the Commission on Higher Education.');
INSERT INTO About(title,description) VALUES('Program Educational Objectives','                                        <b>A few years after graduation, the graduates of the College of Tourism and Hospitality of the University of Santo Tomas are expected to:</b><br></br><br></br>
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
SELECT * FROM Program_Information p JOIN Program_Info_Category c ON c.pic_id=p.pic_id WHERE p.major_id=2;
SELECT * FROM COURSES c JOIN Major m ON c.course_id=1 AND m.course_id=1 WHERE major_id=2;
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
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Student Activities');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title) VALUES('Facilities');


CREATE TABLE PROGRAM_INFORMATION(
	program_info_id int not null auto_increment,
    pic_id int not null,
    major_id int not null,
    description text,
    PRIMARY KEY(program_info_id),
    FOREIGN KEY(pic_id) REFERENCES PROGRAM_INFO_CATEGORY(pic_id),
    FOREIGN KEY(major_id) REFERENCES MAJOR(major_id)
);
#Major in Travel Operations and Service Management
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(1,1,'This covers the study of various components related to the travel and tour industry through technical, practical, and professional learning relevant to the different pillars of tourism, such as tour and travel operations, transportation, accommodation, food and beverage, events management, allied services, entertainment and recreation, tourism research and education, tourism planning and development, and other tourism services. Graduates from this program have career opportunities as Reservation Agents, Flight Attendants, Airline Food Service Crew, Ticket Agents, Training Staff, Baggage Handlers, Sales Representatives, Travel Agents, Travel Counselors, Tour Guides, Tour Escorts, Tour Coordinators, Researchers, Academicians, Travel Writers, Public Relations Officers, or Event Organizers.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(2,1,'The BACHELOR OF SCIENCE IN TOURISM MANAGEMENT<br></br><br></br><b>Major in Travel Operations and Service Management</b> program covers the study of various components focusing on the management, operations and service delivery relevant to the travel and tourism industry. It encompasses technical, practical and professional learning and application of skills with respect to specific areas such as travel agency management, tour arranging and planning, travel industry operations and procedures, tourism marketing and promotion strategies, travel counseling, travel industry law, international and domestic operations, and travel and tourism policy.<br></br><br></br><b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,1,'                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li>
                                    <li> Integrate appropriate technology in planning for instruction.</li>
                                    <li> Discuss the tools used in assessment of and for learning.</li>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li>
                                    <li> Explain the dynamics of the school system.</li>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,1,'<br></br>
                                Reservation Agents<br></br>
                                Research Analyst<br></br>
                                Ground Handling Personnel<br></br>
                                Flight Attendant<br></br>
                                Training Staff<br></br>
                                Customer Service Representative<br></br>
                                Domestic travel counsellor<br></br>
                                International travel counsellor<br></br>
                                File clerks<br></br>
                                Tour Planner<br></br>
                                Tour Guide<br></br>
                                Reservationist<br></br>
                                Group coordinator<br></br>
                                Operations employee<br></br>
                                Travel Representative<br></br>
                                Economic Development Specialist<br></br>
                                Travel Promotions Staff<br></br>
                                Public Information Officer<br></br>
                                Public Relations Personnel<br></br>
                                Communications Specialist<br></br>
                                Travel Editor<br></br>
                                Media Liaison<br></br>
                                Media Specialist<br></br>
                                Travel Photographer<br></br>
                                Administrative Assistant<br></br>
                                Information Specialist<br></br>
                                Media Coordinator<br></br>
                                Travel Writer<br></br>
                                Package tour Coordinator<br></br>
                                Manager of Travel Literature<br></br>
                                Chief of News and Information<br></br>
                                Research Director<br></br>
                                Ticketing Manager<br></br>
                                Area Supervisor<br></br>
                                Airline Purser<br></br>
                                Airline Manager<br></br>
                                Country Manager<br></br>
                                Reservations Manager<br></br>
                                Area Manager<br></br>
                                Ticketing Manager<br></br>
                                Product Development Manager<br></br>
                                Director for Customer Care<br></br>
                                Customer Service Quality Director<br></br>
                                Manager of Travel Literature<br></br>
                                Chief of News and Information<br></br>
                                Tourism Center Director<br></br>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(5,1,'<br></br>
                                The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(6,1,'Enter your answer here');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(7,1,'...');


#Major in Recreation and Leisure Management
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(1,2,'This covers the study of various components related to the travel and tour industry through technical, practical, and professional learning relevant to the different pillars of tourism, such as tour and travel operations, transportation, accommodation, food and beverage, events management, allied services, entertainment and recreation, tourism research and education, tourism planning and development, and other tourism services. Graduates from this program have career opportunities as Reservation Agents, Flight Attendants, Airline Food Service Crew, Ticket Agents, Training Staff, Baggage Handlers, Sales Representatives, Travel Agents, Travel Counselors, Tour Guides, Tour Escorts, Tour Coordinators, Researchers, Academicians, Travel Writers, Public Relations Officers, or Event Organizers.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(2,2,'                                    The BACHELOR OF SCIENCE IN TOURISM MANAGEMENT
                                    <br></br><br></br>
                                    <b>Major in Recreation and Leisure Management</b> program provides an integrated the study of the management and operation of recreation and leisure attractions, facilities and services. It will also cover importance components with regard to the positive use of leisure time, while, traveling, engaging in recreation, recreational sport or entertainment. The program also emphasizes learning and leadership in the recreational environment, through which students will gain strong managerial preparation. The overall learning objective of this program is to prepare the students for professional positions in the fields of recreation and tourism by cultivating a broad understanding of leisure and recreation in our society while developing strong managerial skills.
                                    <br></br><br></br>
                                    <b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,2,'                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li>&nbsp;
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li>
                                    <li> Integrate appropriate technology in planning for instruction.</li>
                                    <li> Discuss the tools used in assessment of and for learning.</li>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li>
                                    <li> Explain the dynamics of the school system.</li>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,2,'                                Park <br></br>
                                Museum Guide<br></br>
                                Handicapped Program Planner<br></br>
                                Concert Promoter<br></br>
                                Recreation Specialists<br></br>
                                Camp Counsellors<br></br>
                                Activity Director<br></br>
                                Camping Director<br></br>
                                Recreation Director<br></br>
                                Events Coordinator<br></br>
                                Amusement/ theme Park Guide<br></br>
                                Planner<br></br>
                                Promotions Staff<br></br>
                                Reception Staff<br></br>
                                Activity Director<br></br>
                                Camping Director<br></br>
                                Recreation Director<br></br>
                                Events Coordinator<br></br>
                                Manager<br></br>
                                Administrator<br></br>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(5,2,'The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(6,2,'Enter your answer here');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(7,2,'...');


#Major in Culinary Entrepreneurship
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(1,3,'This program provides students with a synthesis of different skills, concepts, and principles specializing in hospitality training. It involves the study and application of practical and managerial knowledge and functions, such as hotel and restaurant operations, culinary arts, food service, hospitality education, and research that are essential in preparing the students to become adept future restaurateurs and hoteliers. Graduates from this program have career opportunities as Restaurant Operations manager, Executive Housekeeper, Front Office Staff, Front Office Manager, Management Trainee, Food and Beverage Director, Restaurant or Lodging Business Owner, Leisure and Recreation Consultant, Food Service Consultant, Academician, Food Stylist, Executive Chef, Independent Caterer, Cruise Line Staff, or Bartender.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(2,3,'BACHELOR OF SCIENCE IN HOSPITALITY MANAGEMENT
                                    <br></br><br></br>
                                    <b>Major in Culinary Entrepreneurship</b> program aims to provide the students the opportunity to explore possibilities in becoming future hospitality entrepreneurs running and managing personal or family business thru innovative and creative culinary concepts, products and services. The curriculum provides the students tools and strategies which shall fuel the business endeavors in the culinary industry which include restaurants, cafes, hotels, school food service, catering services among others.
                                    <br></br><br></br>
                                    <b></b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,3,'<ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li>
                                    <li> Integrate appropriate technology in planning for instruction.</li>
                                    <li> Discuss the tools used in assessment of and for learning.</li>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li>
                                    <li> Explain the dynamics of the school system.</li>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,3,'  Fine Dining, Quick Service, Casual Restaurants, Managed Services, Catering, Beverages
                                    <br></br><br></br>   
                                    <b>Dining Room positions:</b>
                                    <ul>
                                        <li>Cashier</li>
                                        <li>Bartender</li>
                                        <li>Mixologist</li>
                                        <li>Oenologist</li>
                                        <li>Restaurant Steward</li>
                                        <li>Bar Supervisor</li>
                                        <li>Waiter/Food Attendant</li>
                                        <li>Room Service Waiter</li>
                                        <li>Sommelier</li>
                                        <li>Barista</li>
                                        <li>Head waiter</li>
                                        <li>Captain waiter</li>
                                        <li>Bar accountant</li>
                                        <li>Restaurant Supervisor</li>
                                        <li>Assistant Restaurant Manager</li>
                                        <li>Shift Leader</li>
                                        <li>Team Leader</li>
                                        <li>Room Service Manager</li>
                                        <li>Maitred Hotel</li>
                                        <li>F&B Director</li>
                                        <li>F&B Outlet Manager</li>
                                        <li>Restaurant Manager</li>
                                        <li>Outlet Manager</li>
                                    </ul>
                                    <br></br>
                                    <b>Managed Services</b>
                                    <br></br>
                                    <b>Kitchen positions:</b>
                                    <ul>
                                        <li>Receiving Clerk</li>
                                        <li>Stock Clerk</li>
                                        <li>Commis Pastry</li>
                                        <li>Baker</li>
                                        <li>Butcher</li>
                                        <li>Commis 1, 2,3</li>
                                    </ul>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(5,3,'The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(6,3,'Enter your answer here');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(7,3,'...');

#Major in Hospitality Leadership
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(1,4,'This program provides students with a synthesis of different skills, concepts, and principles specializing in hospitality training. It involves the study and application of practical and managerial knowledge and functions, such as hotel and restaurant operations, culinary arts, food service, hospitality education, and research that are essential in preparing the students to become adept future restaurateurs and hoteliers. Graduates from this program have career opportunities as Restaurant Operations manager, Executive Housekeeper, Front Office Staff, Front Office Manager, Management Trainee, Food and Beverage Director, Restaurant or Lodging Business Owner, Leisure and Recreation Consultant, Food Service Consultant, Academician, Food Stylist, Executive Chef, Independent Caterer, Cruise Line Staff, or Bartender.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(2,4,'BACHELOR OF SCIENCE IN HOSPITALITY MANAGEMENT
                                    <br></br><br></br>
                                    <b>Major in Hospitality Leadership</b> program prepares the students for exciting management careers in various, dynamic industry segments such as restaurants, hotels, coffee shops, clubs, resorts, bed and breakfasts, inns, events, cruise and airline industry. The blend of core business, authentic leadership and ethical management courses offer the future hospitality professionals to become critical thinkers with practical experiences and passion for service.
                                    <br></br><br></br>
                                    <b></b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,4,'                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li>
                                    <li> Integrate appropriate technology in planning for instruction.</li>
                                    <li> Discuss the tools used in assessment of and for learning.</li>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li>
                                    <li> Explain the dynamics of the school system.</li>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,4,'  Fine Dining, Quick Service, Casual Restaurants, Managed Services, Catering, Beverages
                                    <br></br><br></br>   
                                    <b>Dining Room positions:</b>
                                    <ul>
                                        <li>Cashier</li>
                                        <li>Bartender</li>
                                        <li>Mixologist</li>
                                        <li>Oenologist</li>
                                        <li>Restaurant Steward</li>
                                        <li>Bar Supervisor</li>
                                        <li>Waiter/Food Attendant</li>
                                        <li>Room Service Waiter</li>
                                        <li>Sommelier</li>
                                        <li>Barista</li>
                                        <li>Head waiter</li>
                                        <li>Captain waiter</li>
                                        <li>Bar accountant</li>
                                        <li>Restaurant Supervisor</li>
                                        <li>Assistant Restaurant Manager</li>
                                        <li>Shift Leader</li>
                                        <li>Team Leader</li>
                                        <li>Room Service Manager</li>
                                        <li>Maitred Hotel</li>
                                        <li>F&B Director</li>
                                        <li>F&B Outlet Manager</li>
                                        <li>Restaurant Manager</li>
                                        <li>Outlet Manager</li>
                                    </ul>
                                    <br></br>
                                    <b>Managed Services</b>
                                    <br></br>
                                    <b>Kitchen positions:</b>
                                    <ul>
                                        <li>Receiving Clerk</li>
                                        <li>Stock Clerk</li>
                                        <li>Commis Pastry</li>
                                        <li>Baker</li>
                                        <li>Butcher</li>
                                        <li>Commis 1, 2,3</li>
                                    </ul>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(5,4,'The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(6,4,'Enter your answer here');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(7,4,'...');
UPDATE PROGRAM_INFORMATION SET description='hello' WHERE major_id=4 AND pic_id=7;
SELECT * FROM PROGRAM_INFORMATION WHERE MAJOR_ID=2;
