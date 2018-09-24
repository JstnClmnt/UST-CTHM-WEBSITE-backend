CREATE DATABASE cthmwebsite;
USE cthmwebsite;
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
INSERT INTO IMAGE(img_filepath,img_description) VALUES('D:\\NetBeans\\USTCTHMWebsite\\web\\img\\orgChart.jpg','Organizational-Chart');
INSERT INTO IMAGE(img_filepath,img_description) VALUES('D:\\NetBeans\\USTCTHMWebsite\\web\\img\\map.png','Map');
CREATE TABLE ABOUT(
	post_id int not null auto_increment,
    title varchar(150) not null,
    description text,
    img_id integer,
    icon varchar(50),
    PRIMARY KEY(post_id),
	FOREIGN KEY(img_id) REFERENCES IMAGE(img_id)
);
SELECT * FROM ABOUT;
INSERT INTO About(icon,title,description) VALUES('<i class="fas fa-university"></i>&emsp;','Mission','We commit ourselves in the formation of top-notch competent, committed, and compassionate Thomasian Tourism and Hospitality professionals for the service of the Church, the nation, and the global community<br><br>');
INSERT INTO About(icon,title,description) VALUES('<i class="fas fa-monument"></i>&emsp;','Vision','We envision a premiere College of Tourism and Hospitality Management in the country recognized for its outstanding programs, producing world-class professionals');
INSERT INTO About(icon,title,description) VALUES('<i class="fas fa-star"></i>&emsp;','History','The idea of forming an Institution was conceived by the Tourism and HRM Departments during late 1990’s with the strong support and unwavering efforts of the College of Education. The need for establishing an Institute was realized by two departments because of the fast-paced changes and growth of the industry that greatly influenced the tourism and hospitality education. Likewise, by merging the two programs, student would be able to specialize and dedicate themselves in enhancing their knowledge and skills that would respond to the needs of the industry. Series of departmental meetings and brainstorming were conducted with the vision of forming a new academic unit in the University. The idea was presented to the Tourism and HRM Faculty until such time thatthe College of Education decided to merge the programs by having one Department In its initial stage, the Tourism and HRM Departments were temporarily relocated at the College of Education’s Mini-hotel in the year 2002. This was considered as the dry run to assess the viability of separating the departments from College of Education. Three years later, a formal proposal for institutionalization was submitted to the Academic Council. A thorough procedure that included meetings, deliberation and election were carried out. April 28, 2006 marked the establishment of the Tourism and HRM Departments as an Institution. Upon the approval of the College of Regents dated November 19, 2008; by the Academic Senate dated December 16, 2008; and the Board of Trustees dated January 20, 2009, the institute of Tourism and Hospitality Management was finally converted in to the College of Tourism and Hospitality Management. In 2015, both programs of the CTHM (Hotel and Restaurant Management and Travel Management) received the coveted Center of Excellence distinction from the Commission on Higher Education.');
INSERT INTO About(icon,title,description) VALUES('<i class="fas fa-sitemap"></i>&emsp;','Program Educational Objectives','                                        <b>A few years after graduation, the graduates of the College of Tourism and Hospitality of the University of Santo Tomas are expected to:</b><br><br>
                                        <ol>
                                            <li>Employ a solid understanding and the need for continuous upgrading of the managerial and operational competencies of tourism and hospitality through reflective practice consistent with the global standards and Christian values;</li>
                                            <li>Assess industry-academe trends and issues to generate research undertakings in tourism and hospitality through the basis of specific standards and criteria within personal, professional, societal, and ethical context;</li>
                                            <li>Practice effective interpersonal and communication skills through collaboration, use of information technology and respect for cultural diversity; and</li>
                                            <li>Exhibit Christian leadership promoting life advocacies through project implementation for social and economic transformation.</li>
                                        </ol>');
INSERT INTO ABOUT(icon,title,img_id) VALUES('<i class="fas fa-trophy"></i>&emsp;','Organizational Chart',1);
INSERT INTO ABOUT(icon,title,description) VALUES('<i class="fas fa-users"></i>&emsp;','CTHM Team','<b>Support Staff</b></h4>
                                            <ul>
                                                <li>
                                                    <b>CTHM Cafeteria and Coffee Shop Attendants</b><br>
                                                    &emsp; <b>ERNANDEZ, Kathleen A. (CGSP) </b> - Latin Quarter / Readers’ Café Coffee Shops <br>
                                                    &emsp; <b>MAGPILI, Gerlie G</b> - Latin Quarter / Readers’ Café Coffee Shops<br>
                                                    &emsp; <b>VALDEZ, Rhayan Q</b> - Latin Quarter / Readers’ Café Coffee Shops<br>
                                                    &emsp; <b>ARCEGA, Consuelo M</b> - Cafeteria<br>
                                                    &emsp; <b>MENDOZA, Jane R</b> - Cafeteria<br>
                                                </li><br>
                                                <li>
                                                    <b>Laboratory Technicians</b><br>
                                                    &emsp; <b>CONDOL, Marvincent G</b> - Equipment Room / Computer Technician<br>
                                                    &emsp; <b>BANAAG, Mario B</b> - Food Laboratory<br>
                                                    &emsp; <b>DELA CRUZ, Mark Jacob I</b> - Food Laboratory<br>
                                                    &emsp; <b>LABAY, Rosario C</b> - LABAY, Rosario C<br>
                                                </li><br>
                                                <li>
                                                    <b>Office Clerks</b><br>
                                                    &emsp; <b>ABANADOR, Ma. Theresa H</b><br>
                                                    &emsp; <b>ANIVES, Cyrene R. CGSP</b><br>
                                                    &emsp; <b>LUCINA, Ruby Ann I. CGSP</b><br>
                                                </li><br>
                                                <li>
                                                    <b>Hotel Attendant</b><br>
                                                    &emsp; <b>VICENTE, Jeferson E</b> - Domus Mariae International Residence and Hotel 1611<br>
                                                </li>
                                            </ul>');

INSERT INTO ABOUT(icon,title,description) VALUES('<i class="fas fa-flask"></i>&emsp;','Awards and Recognition','The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.in the settings tab.');
INSERT INTO ABOUT(icon,title,description) VALUES('<i class="fas fa-link"></i>&emsp;','Facilities','To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.');
INSERT INTO ABOUT(icon,title,description) VALUES('<i class="fas fa-map-marker-alt"></i>&emsp;','Linkages','To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.To add a new question go to app settings and press "Manage Questions" button.');
INSERT INTO ABOUT(icon,title,description,img_id) VALUES('Location Map and Contact Details','                                                <b>Office Address</b><br>
                                                Office of the Dean<br>
                                                Ground Floor, Albertus Magnus Building<br>
                                                University of Santo Tomas<br>
                                                España Boulevard, Sampaloc, Manila 1008<br><br>
                                                <b>Contact Numbers</b><br>
                                                Telephone: +63-2-406-1611 loc. 4488',2);   
                                        
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
CREATE TABLE PROGRAM_INFO_CATEGORY(
	pic_id int not null auto_increment,
    pic_title varchar(200),
    icon varchar(150),
    PRIMARY KEY(pic_id)
);

INSERT INTO PROGRAM_INFO_CATEGORY(pic_title,icon) VALUES('Introduction','<i class="fas fa-info"></i>&emsp;');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title,icon) VALUES('Program Description','<i class="fas fa-graduation-cap"></i>&emsp;');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title,icon) VALUES('Program Intended Learning Outcomes','<i class="fas fa-star"></i>&emsp');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title,icon) VALUES('Career Opportunities','<i class="fas fa-briefcase"></i>&emsp;');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title,icon) VALUES('Curriculum','<i class="fas fa-chalkboard"></i>&emsp;');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title,icon) VALUES('Student Activities','<i class="fas fa-calendar-alt"></i>&emsp;');
INSERT INTO PROGRAM_INFO_CATEGORY(pic_title,icon) VALUES('Facilities','<i class="fas fa-flask"></i>&emsp;');

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
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(2,1,'The BACHELOR OF SCIENCE IN TOURISM MANAGEMENT<br><br><b>Major in Travel Operations and Service Management</b> program covers the study of various components focusing on the management, operations and service delivery relevant to the travel and tourism industry. It encompasses technical, practical and professional learning and application of skills with respect to specific areas such as travel agency management, tour arranging and planning, travel industry operations and procedures, tourism marketing and promotion strategies, travel counseling, travel industry law, international and domestic operations, and travel and tourism policy.<br><br><b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,1,'                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li><br>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li><br>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li><br>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li><br>
                                    <li> Integrate appropriate technology in planning for instruction.</li><br>
                                    <li> Discuss the tools used in assessment of and for learning.</li><br>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li><br>
                                    <li> Explain the dynamics of the school system.</li><br>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li><br>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li><br>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li><br>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,1,'<br>
                                Reservation Agents<br>
                                Research Analyst<br>
                                Ground Handling Personnel<br>
                                Flight Attendant<br>
                                Training Staff<br>
                                Customer Service Representative<br>
                                Domestic travel counsellor<br>
                                International travel counsellor<br>
                                File clerks<br>
                                Tour Planner<br>
                                Tour Guide<br>
                                Reservationist<br>
                                Group coordinator<br>
                                Operations employee<br>
                                Travel Representative<br>
                                Economic Development Specialist<br>
                                Travel Promotions Staff<br>
                                Public Information Officer<br>
                                Public Relations Personnel<br>
                                Communications Specialist<br>
                                Travel Editor<br>
                                Media Liaison<br>
                                Media Specialist<br>
                                Travel Photographer<br>
                                Administrative Assistant<br>
                                Information Specialist<br>
                                Media Coordinator<br>
                                Travel Writer<br>
                                Package tour Coordinator<br>
                                Manager of Travel Literature<br>
                                Chief of News and Information<br>
                                Research Director<br>
                                Ticketing Manager<br>
                                Area Supervisor<br>
                                Airline Purser<br>
                                Airline Manager<br>
                                Country Manager<br>
                                Reservations Manager<br>
                                Area Manager<br>
                                Ticketing Manager<br>
                                Product Development Manager<br>
                                Director for Customer Care<br>
                                Customer Service Quality Director<br>
                                Manager of Travel Literature<br>
                                Chief of News and Information<br>
                                Tourism Center Director<br>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(5,1,'<br>
                                The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(6,1,'Enter your answer here');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(7,1,'...');


#Major in Recreation and Leisure Management
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(1,2,'This covers the study of various components related to the travel and tour industry through technical, practical, and professional learning relevant to the different pillars of tourism, such as tour and travel operations, transportation, accommodation, food and beverage, events management, allied services, entertainment and recreation, tourism research and education, tourism planning and development, and other tourism services. Graduates from this program have career opportunities as Reservation Agents, Flight Attendants, Airline Food Service Crew, Ticket Agents, Training Staff, Baggage Handlers, Sales Representatives, Travel Agents, Travel Counselors, Tour Guides, Tour Escorts, Tour Coordinators, Researchers, Academicians, Travel Writers, Public Relations Officers, or Event Organizers.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(2,2,'<br>
                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li><br>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li><br>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li><br>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li><br>
                                    <li> Integrate appropriate technology in planning for instruction.</li><br>
                                    <li> Discuss the tools used in assessment of and for learning.</li><br>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li><br>
                                    <li> Explain the dynamics of the school system.</li><br>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li><br>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li><br>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li><br>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,2,'                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li><br>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li><br>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li><br>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li><br>
                                    <li> Integrate appropriate technology in planning for instruction.</li><br>
                                    <li> Discuss the tools used in assessment of and for learning.</li><br>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li><br>
                                    <li> Explain the dynamics of the school system.</li><br>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li><br>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li><br>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li><br>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,2,'                                Park <br>
                                Museum Guide<br>
                                Handicapped Program Planner<br>
                                Concert Promoter<br>
                                Recreation Specialists<br>
                                Camp Counsellors<br>
                                Activity Director<br>
                                Camping Director<br>
                                Recreation Director<br>
                                Events Coordinator<br>
                                Amusement/ theme Park Guide<br>
                                Planner<br>
                                Promotions Staff<br>
                                Reception Staff<br>
                                Activity Director<br>
                                Camping Director<br>
                                Recreation Director<br>
                                Events Coordinator<br>
                                Manager<br>
                                Administrator<br>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(5,2,'The FAQ title can be adjusted in the settings tab of the App Settings. You can also remove the title by unchecking its checkbox in the settings tab.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(6,2,'Enter your answer here');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(7,2,'...');


#Major in Culinary Entrepreneurship
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(1,3,'This program provides students with a synthesis of different skills, concepts, and principles specializing in hospitality training. It involves the study and application of practical and managerial knowledge and functions, such as hotel and restaurant operations, culinary arts, food service, hospitality education, and research that are essential in preparing the students to become adept future restaurateurs and hoteliers. Graduates from this program have career opportunities as Restaurant Operations manager, Executive Housekeeper, Front Office Staff, Front Office Manager, Management Trainee, Food and Beverage Director, Restaurant or Lodging Business Owner, Leisure and Recreation Consultant, Food Service Consultant, Academician, Food Stylist, Executive Chef, Independent Caterer, Cruise Line Staff, or Bartender.');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(2,3,'BACHELOR OF SCIENCE IN HOSPITALITY MANAGEMENT
                                    <br><br>
                                    <b>Major in Culinary Entrepreneurship</b> program aims to provide the students the opportunity to explore possibilities in becoming future hospitality entrepreneurs running and managing personal or family business thru innovative and creative culinary concepts, products and services. The curriculum provides the students tools and strategies which shall fuel the business endeavors in the culinary industry which include restaurants, cafes, hotels, school food service, catering services among others.
                                    <br><br>
                                    <b></b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,3,'<ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li><br>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li><br>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li><br>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li><br>
                                    <li> Integrate appropriate technology in planning for instruction.</li><br>
                                    <li> Discuss the tools used in assessment of and for learning.</li><br>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li><br>
                                    <li> Explain the dynamics of the school system.</li><br>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li><br>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li><br>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li><br>
                                </ol>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,3,'  Fine Dining, Quick Service, Casual Restaurants, Managed Services, Catering, Beverages
                                    <br><br>   
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
                                    <br>
                                    <b>Managed Services</b>
                                    <br>
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
                                    <br><br>
                                    <b>Major in Hospitality Leadership</b> program prepares the students for exciting management careers in various, dynamic industry segments such as restaurants, hotels, coffee shops, clubs, resorts, bed and breakfasts, inns, events, cruise and airline industry. The blend of core business, authentic leadership and ethical management courses offer the future hospitality professionals to become critical thinkers with practical experiences and passion for service.
                                    <br><br>
                                    <b></b>Note: SHS graduates who do not come from ABM strand will need to take 15 units of Business Management Education (BME) courses.</b>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(3,4,'                                <ol>
                                    <li> Discuss the different classical and emerging theories, principles, and concepts underlying human growth and development.</li><br>
                                    <li> Apply the different classical and emerging theories, principles, and concepts of human growth and development to teaching-learning situations.</li><br>
                                    <li> Explain the different pedagogical theories vis-a-vis subject matter content.</li><br>
                                    <li> Apply the different pedagogical theories, principles, and concepts in instructional planning.</li><br>
                                    <li> Integrate appropriate technology in planning for instruction.</li><br>
                                    <li> Discuss the tools used in assessment of and for learning.</li><br>
                                    <li> Differentiate the roles of teachers in assessment of and for learning.</li><br>
                                    <li> Explain the dynamics of the school system.</li><br>
                                    <li> Apply the knowledge of pedagogical theories and practice through actual classroom teaching under the supervision of a supervising teacher and/or cooperating teacher.</li><br>
                                    <li> Appraise the knowledge, skills, and values they have acquired.</li><br>
                                    <li> Characterize the teachings of St. Thomas Aquinas as lifelong learners.</li><br>
                                </ol>>');
INSERT INTO PROGRAM_INFORMATION(pic_id,major_id,description) VALUES(4,4,'  Fine Dining, Quick Service, Casual Restaurants, Managed Services, Catering, Beverages
                                    <br><br>   
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
                                    <br>
                                    <b>Managed Services</b>
                                    <br>
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

CREATE TABLE ADMINISTRATION(
	admin_id int not null auto_increment,
    full_name varchar(150) not null,
    position varchar(100) not null,
    img_id integer,
    PRIMARY KEY(admin_id),
    FOREIGN KEY(img_id) REFERENCES IMAGE(img_id)
);	

SELECT * FROM ADMINISTRATION;


CREATE TABLE STUDENT_SERVICES(
	service_id int not null auto_increment,
    title varchar(200) not null,
    description text not null,
	icon varchar(50),
    PRIMARY KEY(service_id));
INSERT INTO STUDENT_SERVICES(icon,title,description) VALUES('<i class="fas fa-university"></i>&emsp;','Admission','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.'); 
INSERT INTO STUDENT_SERVICES(icon,title,description) VALUES('<i class="fas fa-child"></i>&emsp;','Student Welfare & Development','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.'); 
INSERT INTO STUDENT_SERVICES(icon,title,description) VALUES('<i class="fas fa-globe-americas"></i>&emsp;','Internationalization','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.'); 
INSERT INTO STUDENT_SERVICES(icon,title,description) VALUES('<i class="fas fa-hand-holding-heart"></i>&emsp;','Community Development','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.'); 
INSERT INTO STUDENT_SERVICES(icon,title,description) VALUES('<i class="fas fa-heart"></i>&emsp;','Counseling and Career Center','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.'); 
INSERT INTO STUDENT_SERVICES(icon,title,description) VALUES('<i class="fas fa-book"></i>&emsp;','Central Library','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.'); 
INSERT INTO STUDENT_SERVICES(icon,title,description) VALUES('<i class="fas fa-medkit"></i>&emsp;','Health Services','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean accumsan, justo in ultrices scelerisque, dui nisl dignissim purus, eu accumsan neque urna eget purus. Donec gravida auctor condimentum. Suspendisse potenti. Aliquam erat volutpat. Aliquam vehicula purus nisi, at efficitur justo vestibulum ut. Praesent ornare tortor eu scelerisque pulvinar. Vivamus id scelerisque leo. Sed lacinia pellentesque est eu accumsan. Proin mauris purus, laoreet ac magna a, gravida finibus ligula. Ut viverra faucibus metus, ut varius turpis tincidunt a.');          
			