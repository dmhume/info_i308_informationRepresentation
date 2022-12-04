#Department
INSERT INTO department (name, cp_fname, cp_lname) VALUES ('Stem', 'Dana', 'White');
INSERT INTO department (name, cp_fname, cp_lname) VALUES ('Business', 'Mark', 'Zuckerberg');
INSERT INTO department (name, cp_fname, cp_lname) VALUES ('Art', 'Van', 'Gogh');

#Building
INSERT INTO building VALUES ('Read','Read Hall', '122 S Jordan Ave, Bloomington, IN');
INSERT INTO building VALUES ('Wilkie','Wilkie Center', '150 N Rose Ave, Bloomington, IN 47406');
INSERT INTO building VALUES ('Teter','Teter Quadrangle', '501 N Sunrise Drive, Bloomington, IN 47406');
INSERT INTO building VALUES ('Luddy','Luddy Hall', '700 N Woodlawn Ave, Bloomington, IN 47408');
INSERT INTO building VALUES ('Ballantine','Ballantine Hall', '1020 E Kirkwood Ave, Bloomington, IN 47405');

#Major
INSERT INTO major VALUES (1, 'Informatics', 14, 1);
INSERT INTO major VALUES (2, 'Finance', 18, 2);
INSERT INTO major VALUES (3, 'Music Theory', 12, 3);
INSERT INTO major VALUES (4, 'Math', 22, 1);

#Semester
INSERT INTO semester(start_date, end_date) VALUES ('2021-08-30', '2021-12-16');
INSERT INTO semester(start_date, end_date) VALUES ('2022-01-09', '2022-05-16');
INSERT INTO semester(start_date, end_date) VALUES ('2022-08-21', '2022-12-16');
INSERT INTO semester(start_date, end_date) VALUES ('2023-01-08', '2023-05-02');

#dorms
INSERT INTO room(buildingid) VALUES ('Read');
INSERT INTO room(buildingid) VALUES ('Teter');
INSERT INTO room(buildingid) VALUES ('Wilkie');

SELECT * FROM room;
SELECT * FROM dorm_room;

INSERT INTO dorm_room VALUES (1, 'Single', 2000);
INSERT INTO dorm_room VALUES (2, 'Double', 1800);
INSERT INTO dorm_room VALUES (3, 'Double', 1800);
INSERT INTO dorm_room VALUES (4, 'Single', 2100);
INSERT INTO dorm_room VALUES (5, 'Double', 1900);
INSERT INTO dorm_room VALUES (6, 'Triple', 1600);
INSERT INTO dorm_room VALUES (7, 'Triple', 1600);
INSERT INTO dorm_room VALUES (8, 'Single', 2500);
INSERT INTO dorm_room VALUES (9, 'Single', 2500);
INSERT INTO dorm_room VALUES (10, 'Double', 2200);

#Offices
INSERT INTO room(buildingid) VALUES ('Ballantine');
INSERT INTO room(buildingid) VALUES ('Luddy');

INSERT INTO office VALUES (11, '219-123-456');
INSERT INTO office VALUES (12, '219-456-789');
INSERT INTO office VALUES (13, '219-123-789');
INSERT INTO office VALUES (14, '219-789-456');
INSERT INTO office VALUES (15, '219-456-456');
INSERT INTO office VALUES (16, '219-456-123');
INSERT INTO office VALUES (17, '219-123-123');
INSERT INTO office VALUES (18, '219-789-123');
INSERT INTO office VALUES (19, '123-456-789');
INSERT INTO office VALUES (20, '789-456-123');

#Classrooms
INSERT INTO room(buildingid) VALUES ('Ballantine');
INSERT INTO room(buildingid) VALUES ('Luddy');

INSERT INTO classroom VALUES(21, 200);
INSERT INTO classroom_feature VALUES(21, 'Lecture Hall');
INSERT INTO classroom VALUES(22, 150);
INSERT INTO classroom_feature VALUES(22, 'Lecture Hall');
INSERT INTO classroom VALUES(23, 50);
INSERT INTO classroom_feature VALUES(23, 'Science Lab');
INSERT INTO classroom VALUES(24, 50);
INSERT INTO classroom_feature VALUES(24, 'Computer Lab');

INSERT INTO classroom VALUES(28, 200);
INSERT INTO classroom_feature VALUES(28, 'Lecture Hall');
INSERT INTO classroom VALUES(29, 150);
INSERT INTO classroom_feature VALUES(29, 'Lecture Hall');
INSERT INTO classroom VALUES(30, 50);
INSERT INTO classroom_feature VALUES(30, 'Computer Lab');
INSERT INTO classroom VALUES(31, 50);
INSERT INTO classroom_feature VALUES(31, 'Computer Lab');

SELECT * FROM classroom;
SELECT * FROM classroom_feature;

#Courses
SELECT * FROM major;
SELECT * FROM department;
SELECT * FROM course;
#INSERT INTO course_prereq(subject, course_num, course_number)

INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('INFO', 4, 1, 'INFO-101', 'Intro to Informatics');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('INFO', 4, 1, 'INFO-202', 'Advanced Informatics');
INSERT INTO course_prereq VALUES ('INFO', 2, 'INFO-101');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('INFO', 4, 1, 'INFO-308', 'Information Representation');
INSERT INTO course_prereq VALUES ('INFO', 3, 'INFO-101');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('INFO', 4, 1, 'INFO-222', 'Social Informatics');
INSERT INTO course_prereq VALUES ('INFO', 4, 'INFO-101');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('INFO', 4, 1, 'INFO-399', 'Capstone');
INSERT INTO course_prereq VALUES ('INFO', 5, 'INFO-308');

INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('FIN', 4, 2, 'FIN-101', 'Intro to Finance');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('FIN', 3, 2, 'FIN-102', 'Intro to Business');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('FIN', 3, 2, 'FIN-111', 'Stocks and Investments');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('FIN', 4, 2, 'FIN-222', 'Advanced Business and Finance');
INSERT INTO course_prereq VALUES ('FIN', 10, 'FIN-101');
INSERT INTO course_prereq VALUES ('FIN', 10, 'FIN-102');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('FIN', 4, 2, 'FIN-399', 'Capstone');
INSERT INTO course_prereq VALUES ('FIN', 11, 'FIN-222');

INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MUS', 4, 3, 'MUS-101', 'Intro to Music Theory');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MUS', 4, 3, 'MUS-201', 'Music Theory II');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MUS', 3, 3, 'MUS-111', 'Music and Art');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MUS', 3, 3, 'MUS-222', 'Music Legends');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MUS', 4, 3, 'MUS-399', 'Song Writing');
INSERT INTO course_prereq VALUES ('MUS', 16, 'MUS-101');
INSERT INTO course_prereq VALUES ('MUS', 16, 'MUS-201');

INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MATH', 4, 1, 'MATH-101', 'Calculus I');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MATH', 4, 1, 'MATH-201', 'Calculus II');
INSERT INTO course_prereq VALUES ('MATH', 18, 'MATH-101');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MATH', 4, 1, 'MATH-111', 'Statistics I');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MATH', 4, 1, 'MATH-211', 'Statistics II');
INSERT INTO course_prereq VALUES ('MATH', 20, 'MATH-111');
INSERT INTO course(subject, cred_hours, deptid, course_number, title) VALUES ('MATH', 4, 1, 'MATH-222', 'Calculus III');
INSERT INTO course_prereq VALUES ('MATH', 21, 'MATH-101');
INSERT INTO course_prereq VALUES ('MATH', 21, 'MATH-201');

#Faculty
INSERT INTO faculty(first_name, last_name, fac_rank, hire_date, phone, email, deptid, roomid) VALUES ('Dana', 'White', 'Chairperson', '2004-04-21', '213-444-4564', 'danaw@ufc.com', 1, 16);
INSERT INTO faculty(first_name, last_name, fac_rank, hire_date, phone, email, deptid, roomid) VALUES ('Isaac', 'Informatics', 'Professor', '2009-08-02', '213-454-4577', 'i_info@iu.edu', 1, 17);
INSERT INTO faculty(first_name, last_name, fac_rank, hire_date, phone, email, deptid, roomid) VALUES ('Matt', 'Mathematics', 'Professor', '2014-06-20', '289-189-8337', 'mathiscool@iu.edu', 1, 18);

INSERT INTO faculty(first_name, last_name, fac_rank, hire_date, phone, email, deptid, roomid) VALUES ('Mark', 'Zuckerberg', 'Chairperson', '2015-12-31', '666-666-6666', 'thezuck@iu.edu', 2, 11);
INSERT INTO faculty(first_name, last_name, fac_rank, hire_date, phone, email, deptid, roomid) VALUES ('Frank', 'Finance', 'Professor', '2009-12-22', '299-567-1544', 'frank322@iu.edu', 2, 12);

INSERT INTO faculty(first_name, last_name, fac_rank, hire_date, phone, email, deptid, roomid) VALUES ('Van', 'Gogh', 'Chairperson', '1911-01-01', '111-111-1111', 'vogh@iu.edu', 3, 13);
INSERT INTO faculty(first_name, last_name, fac_rank, hire_date, phone, email, deptid, roomid) VALUES ('Johann', 'Bach', 'Professor', '1911-01-02', '111-111-1112', 'akasebastian@iu.edu', 3, 13);

SELECT * FROM room;
SELECT * FROM building;
SELECT * FROM dorm_room;

#Students
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Joe', 'Gatto', '122 S Jordan Ave', 'Bloomington', 47401, '331-223-2456', 'joe@jokers.com', 1);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Brian', 'Quinn', '122 S Jordan Ave', 'Bloomington', 47401, '331-243-2336', 'q@jokers.com', 2);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Sal', 'Vulcano', '122 S Jordan Ave', 'Bloomington', 47401, '331-223-1157', 'sal@jokers.com',2);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('James', 'Murray', '501 N Sunrise Drive', 'Bloomington', 47401, '331-873-6543', 'mur@jokers.com', 4);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('David', 'Hume', '501 N Sunrise Drive', 'Bloomington', 47401, '897-789-4454', 'humemongous@aim.com', 5);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Cory', 'Penkala', '501 N Sunrise Drive', 'Bloomington', 47401, '331-123-2454', 'cpen@iu.edu', 5);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Jose', 'Herrera', '501 N Sunrise Drive', 'Bloomington', 47401, '331-883-7856', 'jherr@iu.edu', 6);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Mike', 'Krapf', '501 N Sunrise Drive', 'Bloomington', 47401, '331-276-2556', 'mkra@iu.edu', 6);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Kerry', 'Wood', '501 N Sunrise Drive', 'Bloomington', 47401, '331-223-2488', 'kwoo@iu.edu', 6);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Nathan', 'Fielder', '501 N Sunrise Drive', 'Bloomington', 47401, '331-443-2216', 'nfie@iu.edu', 7);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Eric', 'Andre', '501 N Sunrise Drive', 'Bloomington', 47401, '331-223-5356', 'eand@iu.edu', 7);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Megan', 'Fox', '501 N Sunrise Drive', 'Bloomington', 47401, '331-213-2256', 'mfox@iu.edu', 7);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Joseph', 'Smith', '150 N Rose Ave', 'Bloomington', 10301, '111-223-2456', 'jsmi@iu.edu', 8);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Breanna', 'Hume', '150 N Rose Ave', 'Bloomington', 10301, '381-223-2456', 'bhum@iu.edu', 9);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('David', 'Dick', '150 N Rose Ave', 'Bloomington', 10301, '331-999-2456', 'ddic@iu.edu', 10);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('George', 'Ficker', '150 N Rose Ave', 'Bloomington', 10301, '331-773-2456', 'gfic@iu.edu', 10);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Nick', 'Gaik', '132 Main St', 'Staten Island', 10301, '331-223-2666', 'ngai@iu.edu', NULL);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Emma', 'Page', '132 Main St', 'Staten Island', 10301, '361-743-2456', 'epag@iu.edu', NULL);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Brie', 'Larson', '122 S Jordan Ave', 'Bloomington', 47401, '423-546-5589', 'blar@iu.edu', 3);
INSERT INTO student(first_name, last_name, street, city, zip, phone, email, roomid) VALUES ('Gal', 'Gadot', '122 S Jordan Ave', 'Bloomington', 47401, '361-311-7654', 'ggad@iu.edu', 3);

#dorm payments (amount, type, date, studentid, roomid)
SELECT * FROM dorm_payment;

INSERT INTO dorm_payment VALUES (2000, 'Single', '2021-08-01', 1, 1);
INSERT INTO dorm_payment VALUES (1800, 'Double', '2021-08-01', 2, 2);
INSERT INTO dorm_payment VALUES (1800, 'Double', '2021-08-01', 3, 2);
INSERT INTO dorm_payment VALUES (2100, 'Single', '2021-08-01', 4, 4);
INSERT INTO dorm_payment VALUES (2100, 'Double', '2021-08-01', 5, 5);
INSERT INTO dorm_payment VALUES (1900, 'Double', '2021-08-01', 6, 5);
INSERT INTO dorm_payment VALUES (1600, 'Triple', '2021-08-01', 7, 6);
INSERT INTO dorm_payment VALUES (1600, 'Triple', '2021-08-01', 8, 6);
INSERT INTO dorm_payment VALUES (1600, 'Triple', '2021-08-01', 9, 6);
INSERT INTO dorm_payment VALUES (1600, 'Triple', '2021-08-01', 10, 7);
INSERT INTO dorm_payment VALUES (1600, 'Triple', '2021-08-01', 11, 7);
INSERT INTO dorm_payment VALUES (1600, 'Triple', '2021-08-01', 12, 7);
INSERT INTO dorm_payment VALUES (2500, 'Single', '2021-08-01', 13, 8);
INSERT INTO dorm_payment VALUES (2500, 'Single', '2021-08-01', 14, 9);
INSERT INTO dorm_payment VALUES (2200, 'Double', '2021-08-01', 15, 10);
INSERT INTO dorm_payment VALUES (2200, 'Double', '2021-08-01', 16, 10);
INSERT INTO dorm_payment VALUES (1800, 'Double', '2021-08-01', 19, 3);
INSERT INTO dorm_payment VALUES (1800, 'Double', '2021-08-01', 20, 3);



#student phones
INSERT INTO student_phone VALUES ('331-223-2456', 'cell', 1);
INSERT INTO student_phone VALUES ('331-243-2336', 'cell', 2);
INSERT INTO student_phone VALUES ('331-223-1157', 'cell', 3);
INSERT INTO student_phone VALUES ('331-873-6543', 'cell', 4);
INSERT INTO student_phone VALUES ('897-789-4454', 'cell', 5);
INSERT INTO student_phone VALUES ('331-123-2454', 'cell', 6);
INSERT INTO student_phone VALUES ('331-883-7856', 'cell', 7);
INSERT INTO student_phone VALUES ('331-276-2556', 'cell', 8);
INSERT INTO student_phone VALUES ('331-223-2488', 'cell', 9);
INSERT INTO student_phone VALUES ('331-443-2216', 'cell', 10);
INSERT INTO student_phone VALUES ('331-223-5356', 'cell', 11);
INSERT INTO student_phone VALUES ('331-213-2256', 'cell', 12);
INSERT INTO student_phone VALUES ('111-223-2456', 'cell', 13);
INSERT INTO student_phone VALUES ('381-223-2456', 'cell', 14);
INSERT INTO student_phone VALUES ('331-999-2456', 'cell', 15);
INSERT INTO student_phone VALUES ('331-773-2456', 'cell', 16);
INSERT INTO student_phone VALUES ('331-223-2666', 'cell', 17);
INSERT INTO student_phone VALUES ('361-743-2456', 'cell', 18);
INSERT INTO student_phone VALUES ('423-546-5589', 'cell', 19);
INSERT INTO student_phone VALUES ('361-311-7654', 'cell', 20);

#Parents
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Sue', 'Gatto', 1);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Barb', 'Quinn', 2);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Donna', 'Vulcano', 3);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Sara', 'Murray', 4);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Holly', 'Hume', 5);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Melinda', 'Penkala', 6);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Maria', 'Herrera', 7);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('David', 'Krapf', 8);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Don', 'Wood', 9);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Tom', 'Fielder', 10);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Brandon', 'Andre', 11);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Joe', 'Fox', 12);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Jake', 'Smith', 13);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Holly', 'Hume', 14);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Sal', 'Dick', 15);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Maria', 'Ficker', 16);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Alison', 'Gaik', 17);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Elliot', 'Page', 18);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('Pops', 'Larson', 19);
INSERT INTO parent(first_name, last_name, studentid) VALUES ('James', 'Gadot', 20);

#Parent Phones
INSERT INTO parent_phone VALUES ('331-223-1124', 'cell', 1);
INSERT INTO parent_phone VALUES ('331-223-4567', 'cell', 2);
INSERT INTO parent_phone VALUES ('331-465-7786', 'cell', 3);
INSERT INTO parent_phone VALUES ('331-368-9806', 'cell', 4);
INSERT INTO parent_phone VALUES ('331-223-0096', 'cell', 5);
INSERT INTO parent_phone VALUES ('331-356-2344', 'cell', 6);
INSERT INTO parent_phone VALUES ('331-112-3467', 'cell', 7);
INSERT INTO parent_phone VALUES ('331-357-3456', 'cell', 8);
INSERT INTO parent_phone VALUES ('331-456-8477', 'cell', 9);
INSERT INTO parent_phone VALUES ('331-753-2456', 'cell', 10);
INSERT INTO parent_phone VALUES ('331-123-7841', 'cell', 11);
INSERT INTO parent_phone VALUES ('331-789-8887', 'cell', 12);
INSERT INTO parent_phone VALUES ('331-002-2556', 'cell', 13);
INSERT INTO parent_phone VALUES ('331-010-2456', 'cell', 14);
INSERT INTO parent_phone VALUES ('331-020-2211', 'cell', 15);
INSERT INTO parent_phone VALUES ('331-040-1166', 'cell', 16);
INSERT INTO parent_phone VALUES ('331-454-6698', 'cell', 17);
INSERT INTO parent_phone VALUES ('331-646-9046', 'cell', 18);
INSERT INTO parent_phone VALUES ('331-420-4563', 'cell', 19);
INSERT INTO parent_phone VALUES ('331-104-7899', 'cell', 20);

#course_room(course_num, roomid, facultyid)
#Info
INSERT INTO course_room VALUES (1, 28, 2);
INSERT INTO course_room VALUES (2, 28, 2);
INSERT INTO course_room VALUES (3, 30, 2);
INSERT INTO course_room VALUES (4, 29, 2);
INSERT INTO course_room VALUES (5, 31, 2);

#finance
INSERT INTO course_room VALUES (6, 21, 5);
INSERT INTO course_room VALUES (8, 21, 5);
INSERT INTO course_room VALUES (9, 22, 5);
INSERT INTO course_room VALUES (10, 22, 5);
INSERT INTO course_room VALUES (11, 23, 5);

#music
INSERT INTO course_room VALUES (12, 22, 7);
INSERT INTO course_room VALUES (13, 22, 7);
INSERT INTO course_room VALUES (14, 23, 7);
INSERT INTO course_room VALUES (15, 23, 7);
INSERT INTO course_room VALUES (16, 24, 7);

#math
INSERT INTO course_room VALUES (17, 29, 3);
INSERT INTO course_room VALUES (18, 29, 3);
INSERT INTO course_room VALUES (19, 28, 3);
INSERT INTO course_room VALUES (20, 30, 3);
INSERT INTO course_room VALUES (21, 31, 3);

#Sections(title, start_date, end_date, course_num, semid)
SELECT * FROM semester;
SELECT * FROM course;
SELECT * FROM section;
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-101', '2021-08-30', '2021-12-16', 1, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-101', '2022-01-09', '2022-05-16', 1, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-101', '2022-08-21', '2022-12-16', 1, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-101', '2023-01-08', '2023-05-02', 1, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-202', '2021-08-30', '2021-12-16', 2, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-202', '2022-01-09', '2022-05-16', 2, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-202', '2022-08-21', '2022-12-16', 2, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-202', '2023-01-08', '2023-05-02', 2, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-308', '2021-08-30', '2021-12-16', 3, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-308', '2022-01-09', '2022-05-16', 3, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-308', '2022-08-21', '2022-12-16', 3, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-308', '2023-01-08', '2023-05-02', 3, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-222', '2021-08-30', '2021-12-16', 4, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-222', '2022-01-09', '2022-05-16', 4, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-222', '2022-08-21', '2022-12-16', 4, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-222', '2023-01-08', '2023-05-02', 4, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-399', '2021-08-30', '2021-12-16', 5, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-399', '2022-01-09', '2022-05-16', 5, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-399', '2022-08-21', '2022-12-16', 5, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('INFO-399', '2023-01-08', '2023-05-02', 5, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-101', '2021-08-30', '2021-12-16', 6, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-101', '2022-01-09', '2022-05-16', 6, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-101', '2022-08-21', '2022-12-16', 6, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-101', '2023-01-08', '2023-05-02', 6, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-102', '2021-08-30', '2021-12-16', 8, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-102', '2022-01-09', '2022-05-16', 8, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-102', '2022-08-21', '2022-12-16', 8, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-102', '2023-01-08', '2023-05-02', 8, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-111', '2021-08-30', '2021-12-16', 9, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-111', '2022-01-09', '2022-05-16', 9, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-111', '2022-08-21', '2022-12-16', 9, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-111', '2023-01-08', '2023-05-02', 9, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-222', '2021-08-30', '2021-12-16', 10, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-222', '2022-01-09', '2022-05-16', 10, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-222', '2022-08-21', '2022-12-16', 10, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-222', '2023-01-08', '2023-05-02', 10, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-399', '2021-08-30', '2021-12-16', 11, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-399', '2022-01-09', '2022-05-16', 11, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-399', '2022-08-21', '2022-12-16', 11, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('FIN-399', '2023-01-08', '2023-05-02', 11, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-101', '2021-08-30', '2021-12-16', 12, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-101', '2022-01-09', '2022-05-16', 12, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-101', '2021-08-30', '2021-12-16', 12, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-101', '2023-01-08', '2023-05-02', 12, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-201', '2021-08-30', '2021-12-16', 13, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-201', '2022-01-09', '2022-05-16', 13, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-201', '2021-08-30', '2021-12-16', 13, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-201', '2023-01-08', '2023-05-02', 13, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-111', '2021-08-30', '2021-12-16', 14, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-111', '2022-01-09', '2022-05-16', 14, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-111', '2021-08-30', '2021-12-16', 14, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-111', '2023-01-08', '2023-05-02', 14, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-222', '2021-08-30', '2021-12-16', 15, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-222', '2022-01-09', '2022-05-16', 15, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-222', '2021-08-30', '2021-12-16', 15, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-222', '2023-01-08', '2023-05-02', 15, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-399', '2021-08-30', '2021-12-16', 16, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-399', '2022-01-09', '2022-05-16', 16, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-399', '2021-08-30', '2021-12-16', 16, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MUS-399', '2023-01-08', '2023-05-02', 16, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-101', '2021-08-30', '2021-12-16', 17, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-101', '2022-01-09', '2022-05-16', 17, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-101', '2021-08-30', '2021-12-16', 17, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-101', '2023-01-08', '2023-05-02', 17, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-201', '2021-08-30', '2021-12-16', 18, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-201', '2022-01-09', '2022-05-16', 18, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-201', '2021-08-30', '2021-12-16', 18, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-201', '2023-01-08', '2023-05-02', 18, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-111', '2021-08-30', '2021-12-16', 19, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-111', '2022-01-09', '2022-05-16', 19, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-111', '2021-08-30', '2021-12-16', 19, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-111', '2023-01-08', '2023-05-02', 19, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-211', '2021-08-30', '2021-12-16', 20, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-211', '2022-01-09', '2022-05-16', 20, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-211', '2021-08-30', '2021-12-16', 20, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-211', '2023-01-08', '2023-05-02', 20, 5);

INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-222', '2021-08-30', '2021-12-16', 21, 1);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-222', '2022-01-09', '2022-05-16', 21, 2);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-222', '2021-08-30', '2021-12-16', 21, 3);
INSERT INTO section(title, start_date, end_date, course_num, semid) VALUES ('MATH-222', '2023-01-08', '2023-05-02', 21, 5);

#Faculty_section
SELECT * FROM faculty;
SELECT * FROM faculty_section;
SELECT * FROM section;
INSERT INTO faculty_section VALUES(2, 1);
INSERT INTO faculty_section VALUES(2, 2);
INSERT INTO faculty_section VALUES(2, 3);
INSERT INTO faculty_section VALUES(2, 11);
INSERT INTO faculty_section VALUES(2, 12);
INSERT INTO faculty_section VALUES(2, 13);
INSERT INTO faculty_section VALUES(2, 14);
INSERT INTO faculty_section VALUES(2, 15);
INSERT INTO faculty_section VALUES(2, 16);
INSERT INTO faculty_section VALUES(2, 17);
INSERT INTO faculty_section VALUES(2, 18);
INSERT INTO faculty_section VALUES(2, 19);
INSERT INTO faculty_section VALUES(2, 20);
INSERT INTO faculty_section VALUES(2, 21);
INSERT INTO faculty_section VALUES(2, 22);
INSERT INTO faculty_section VALUES(2, 23);
INSERT INTO faculty_section VALUES(2, 24);
INSERT INTO faculty_section VALUES(2, 25);
INSERT INTO faculty_section VALUES(2, 26);
INSERT INTO faculty_section VALUES(2, 27);
INSERT INTO faculty_section VALUES(5, 28);
INSERT INTO faculty_section VALUES(5, 29);
INSERT INTO faculty_section VALUES(5, 30);
INSERT INTO faculty_section VALUES(5, 31);
INSERT INTO faculty_section VALUES(5, 33);
INSERT INTO faculty_section VALUES(5, 34);
INSERT INTO faculty_section VALUES(5, 35);
INSERT INTO faculty_section VALUES(5, 36);
INSERT INTO faculty_section VALUES(5, 37);
INSERT INTO faculty_section VALUES(5, 38);
INSERT INTO faculty_section VALUES(5, 39);
INSERT INTO faculty_section VALUES(5, 40);
INSERT INTO faculty_section VALUES(5, 41);
INSERT INTO faculty_section VALUES(5, 42);
INSERT INTO faculty_section VALUES(5, 43);
INSERT INTO faculty_section VALUES(5, 44);
INSERT INTO faculty_section VALUES(5, 45);
INSERT INTO faculty_section VALUES(5, 46);
INSERT INTO faculty_section VALUES(5, 47);
INSERT INTO faculty_section VALUES(5, 48);
INSERT INTO faculty_section VALUES(7, 49);
INSERT INTO faculty_section VALUES(7, 50);
INSERT INTO faculty_section VALUES(7, 51);
INSERT INTO faculty_section VALUES(7, 52);
INSERT INTO faculty_section VALUES(7, 69);
INSERT INTO faculty_section VALUES(7, 70);
INSERT INTO faculty_section VALUES(7, 71);
INSERT INTO faculty_section VALUES(7, 72);
INSERT INTO faculty_section VALUES(7, 73);
INSERT INTO faculty_section VALUES(7, 74);
INSERT INTO faculty_section VALUES(7, 75);
INSERT INTO faculty_section VALUES(7, 76);
INSERT INTO faculty_section VALUES(7, 77);
INSERT INTO faculty_section VALUES(7, 78);
INSERT INTO faculty_section VALUES(7, 79);
INSERT INTO faculty_section VALUES(7, 80);
INSERT INTO faculty_section VALUES(7, 81);
INSERT INTO faculty_section VALUES(7, 82);
INSERT INTO faculty_section VALUES(7, 83);
INSERT INTO faculty_section VALUES(7, 84);
INSERT INTO faculty_section VALUES(3, 85);
INSERT INTO faculty_section VALUES(3, 86);
INSERT INTO faculty_section VALUES(3, 87);
INSERT INTO faculty_section VALUES(3, 88);
INSERT INTO faculty_section VALUES(3, 89);
INSERT INTO faculty_section VALUES(3, 90);
INSERT INTO faculty_section VALUES(3, 91);
INSERT INTO faculty_section VALUES(3, 92);
INSERT INTO faculty_section VALUES(3, 93);
INSERT INTO faculty_section VALUES(3, 94);
INSERT INTO faculty_section VALUES(3, 95);
INSERT INTO faculty_section VALUES(3, 96);
INSERT INTO faculty_section VALUES(3, 97);
INSERT INTO faculty_section VALUES(3, 98);
INSERT INTO faculty_section VALUES(3, 99);
INSERT INTO faculty_section VALUES(3, 100);
INSERT INTO faculty_section VALUES(3, 101);
INSERT INTO faculty_section VALUES(3, 102);
INSERT INTO faculty_section VALUES(3, 103);
INSERT INTO faculty_section VALUES(3, 104);

#Course Section
INSERT INTO course_section VALUES(1, 1);
INSERT INTO course_section VALUES(1, 2);
INSERT INTO course_section VALUES(1, 3);
INSERT INTO course_section VALUES(1, 11);
INSERT INTO course_section VALUES(2, 12);
INSERT INTO course_section VALUES(2, 13);
INSERT INTO course_section VALUES(2, 14);
INSERT INTO course_section VALUES(2, 15);
INSERT INTO course_section VALUES(3, 16);
INSERT INTO course_section VALUES(3, 17);
INSERT INTO course_section VALUES(3, 18);
INSERT INTO course_section VALUES(3, 19);
INSERT INTO course_section VALUES(4, 20);
INSERT INTO course_section VALUES(4, 21);
INSERT INTO course_section VALUES(4, 22);
INSERT INTO course_section VALUES(4, 23);
INSERT INTO course_section VALUES(5, 24);
INSERT INTO course_section VALUES(5, 25);
INSERT INTO course_section VALUES(5, 26);
INSERT INTO course_section VALUES(5, 27);
INSERT INTO course_section VALUES(6, 28);
INSERT INTO course_section VALUES(6, 29);
INSERT INTO course_section VALUES(6, 30);
INSERT INTO course_section VALUES(6, 31);
INSERT INTO course_section VALUES(8, 33);
INSERT INTO course_section VALUES(8, 34);
INSERT INTO course_section VALUES(8, 35);
INSERT INTO course_section VALUES(8, 36);
INSERT INTO course_section VALUES(9, 37);
INSERT INTO course_section VALUES(9, 38);
INSERT INTO course_section VALUES(9, 39);
INSERT INTO course_section VALUES(9, 40);
INSERT INTO course_section VALUES(10, 41);
INSERT INTO course_section VALUES(10, 42);
INSERT INTO course_section VALUES(10, 43);
INSERT INTO course_section VALUES(10, 44);
INSERT INTO course_section VALUES(11, 45);
INSERT INTO course_section VALUES(11, 46);
INSERT INTO course_section VALUES(11, 47);
INSERT INTO course_section VALUES(11, 48);
INSERT INTO course_section VALUES(12, 49);
INSERT INTO course_section VALUES(12, 50);
INSERT INTO course_section VALUES(12, 51);
INSERT INTO course_section VALUES(12, 52);
INSERT INTO course_section VALUES(13, 69);
INSERT INTO course_section VALUES(13, 70);
INSERT INTO course_section VALUES(13, 71);
INSERT INTO course_section VALUES(13, 72);
INSERT INTO course_section VALUES(14, 73);
INSERT INTO course_section VALUES(14, 74);
INSERT INTO course_section VALUES(14, 75);
INSERT INTO course_section VALUES(14, 76);
INSERT INTO course_section VALUES(15, 77);
INSERT INTO course_section VALUES(15, 78);
INSERT INTO course_section VALUES(15, 79);
INSERT INTO course_section VALUES(15, 80);
INSERT INTO course_section VALUES(16, 81);
INSERT INTO course_section VALUES(16, 82);
INSERT INTO course_section VALUES(16, 83);
INSERT INTO course_section VALUES(16, 84);
INSERT INTO course_section VALUES(17, 85);
INSERT INTO course_section VALUES(17, 86);
INSERT INTO course_section VALUES(17, 87);
INSERT INTO course_section VALUES(17, 88);
INSERT INTO course_section VALUES(18, 89);
INSERT INTO course_section VALUES(18, 90);
INSERT INTO course_section VALUES(18, 91);
INSERT INTO course_section VALUES(18, 92);
INSERT INTO course_section VALUES(19, 93);
INSERT INTO course_section VALUES(19, 94);
INSERT INTO course_section VALUES(19, 95);
INSERT INTO course_section VALUES(19, 96);
INSERT INTO course_section VALUES(20, 97);
INSERT INTO course_section VALUES(20, 98);
INSERT INTO course_section VALUES(20, 99);
INSERT INTO course_section VALUES(20, 100);
INSERT INTO course_section VALUES(21, 101);
INSERT INTO course_section VALUES(21, 102);
INSERT INTO course_section VALUES(21, 103);
INSERT INTO course_section VALUES(21, 104);

#Section_semester
INSERT INTO section_semester VALUES(1, 1);
INSERT INTO section_semester VALUES(2, 2);
INSERT INTO section_semester VALUES(3, 3);
INSERT INTO section_semester VALUES(5, 11);
INSERT INTO section_semester VALUES(1, 12);
INSERT INTO section_semester VALUES(2, 13);
INSERT INTO section_semester VALUES(3, 14);
INSERT INTO section_semester VALUES(5, 15);
INSERT INTO section_semester VALUES(1, 16);
INSERT INTO section_semester VALUES(2, 17);
INSERT INTO section_semester VALUES(3, 18);
INSERT INTO section_semester VALUES(5, 19);
INSERT INTO section_semester VALUES(1, 20);
INSERT INTO section_semester VALUES(2, 21);
INSERT INTO section_semester VALUES(3, 22);
INSERT INTO section_semester VALUES(5, 23);
INSERT INTO section_semester VALUES(1, 24);
INSERT INTO section_semester VALUES(2, 25);
INSERT INTO section_semester VALUES(3, 26);
INSERT INTO section_semester VALUES(5, 27);
INSERT INTO section_semester VALUES(1, 28);
INSERT INTO section_semester VALUES(2, 29);
INSERT INTO section_semester VALUES(3, 30);
INSERT INTO section_semester VALUES(5, 31);
INSERT INTO section_semester VALUES(1, 33);
INSERT INTO section_semester VALUES(2, 34);
INSERT INTO section_semester VALUES(3, 35);
INSERT INTO section_semester VALUES(5, 36);
INSERT INTO section_semester VALUES(1, 37);
INSERT INTO section_semester VALUES(2, 38);
INSERT INTO section_semester VALUES(3, 39);
INSERT INTO section_semester VALUES(5, 40);
INSERT INTO section_semester VALUES(1, 41);
INSERT INTO section_semester VALUES(2, 42);
INSERT INTO section_semester VALUES(3, 43);
INSERT INTO section_semester VALUES(5, 44);
INSERT INTO section_semester VALUES(1, 45);
INSERT INTO section_semester VALUES(2, 46);
INSERT INTO section_semester VALUES(3, 47);
INSERT INTO section_semester VALUES(5, 48);
INSERT INTO section_semester VALUES(1, 49);
INSERT INTO section_semester VALUES(2, 50);
INSERT INTO section_semester VALUES(3, 51);
INSERT INTO section_semester VALUES(5, 52);
INSERT INTO section_semester VALUES(1, 69);
INSERT INTO section_semester VALUES(2, 70);
INSERT INTO section_semester VALUES(3, 71);
INSERT INTO section_semester VALUES(5, 72);
INSERT INTO section_semester VALUES(1, 73);
INSERT INTO section_semester VALUES(2, 74);
INSERT INTO section_semester VALUES(3, 75);
INSERT INTO section_semester VALUES(5, 76);
INSERT INTO section_semester VALUES(1, 77);
INSERT INTO section_semester VALUES(2, 78);
INSERT INTO section_semester VALUES(3, 79);
INSERT INTO section_semester VALUES(5, 80);
INSERT INTO section_semester VALUES(1, 81);
INSERT INTO section_semester VALUES(2, 82);
INSERT INTO section_semester VALUES(3, 83);
INSERT INTO section_semester VALUES(5, 84);
INSERT INTO section_semester VALUES(1, 85);
INSERT INTO section_semester VALUES(2, 86);
INSERT INTO section_semester VALUES(3, 87);
INSERT INTO section_semester VALUES(5, 88);
INSERT INTO section_semester VALUES(1, 89);
INSERT INTO section_semester VALUES(2, 90);
INSERT INTO section_semester VALUES(3, 91);
INSERT INTO section_semester VALUES(5, 92);
INSERT INTO section_semester VALUES(1, 93);
INSERT INTO section_semester VALUES(2, 94);
INSERT INTO section_semester VALUES(3, 95);
INSERT INTO section_semester VALUES(5, 96);
INSERT INTO section_semester VALUES(1, 97);
INSERT INTO section_semester VALUES(2, 98);
INSERT INTO section_semester VALUES(3, 99);
INSERT INTO section_semester VALUES(5, 100);
INSERT INTO section_semester VALUES(1, 101);
INSERT INTO section_semester VALUES(2, 102);
INSERT INTO section_semester VALUES(3, 103);
INSERT INTO section_semester VALUES(5, 104);

#student_semester(studentid, semid)
SELECT * FROM student;
SELECT * FROM semester;
#info
INSERT INTO student_semester VALUES (1, 1);
INSERT INTO student_semester VALUES (1, 2);
INSERT INTO student_semester VALUES (2, 1);
INSERT INTO student_semester VALUES (2, 2);
INSERT INTO student_semester VALUES (3, 1);
INSERT INTO student_semester VALUES (3, 2);
INSERT INTO student_semester VALUES (3, 3);
INSERT INTO student_semester VALUES (3, 5);
INSERT INTO student_semester VALUES (4, 1);
INSERT INTO student_semester VALUES (4, 2);
INSERT INTO student_semester VALUES (4, 3);
INSERT INTO student_semester VALUES (4, 5);
INSERT INTO student_semester VALUES (5, 1);
INSERT INTO student_semester VALUES (5, 2);
INSERT INTO student_semester VALUES (5, 3);
INSERT INTO student_semester VALUES (5, 5);

#finance
INSERT INTO student_semester VALUES (6, 1);
INSERT INTO student_semester VALUES (6, 2);
INSERT INTO student_semester VALUES (7, 1);
INSERT INTO student_semester VALUES (7, 2);
INSERT INTO student_semester VALUES (8, 1);
INSERT INTO student_semester VALUES (8, 2);
INSERT INTO student_semester VALUES (8, 3);
INSERT INTO student_semester VALUES (8, 5);
INSERT INTO student_semester VALUES (9, 1);
INSERT INTO student_semester VALUES (9, 2);
INSERT INTO student_semester VALUES (9, 3);
INSERT INTO student_semester VALUES (9, 5);
INSERT INTO student_semester VALUES (10, 1);
INSERT INTO student_semester VALUES (10, 2);
INSERT INTO student_semester VALUES (10, 3);
INSERT INTO student_semester VALUES (10, 5);
#music
INSERT INTO student_semester VALUES (11, 1);
INSERT INTO student_semester VALUES (11, 2);
INSERT INTO student_semester VALUES (12, 1);
INSERT INTO student_semester VALUES (12, 2);
INSERT INTO student_semester VALUES (13, 1);
INSERT INTO student_semester VALUES (13, 2);
INSERT INTO student_semester VALUES (13, 3);
INSERT INTO student_semester VALUES (13, 5);
INSERT INTO student_semester VALUES (14, 1);
INSERT INTO student_semester VALUES (14, 2);
INSERT INTO student_semester VALUES (14, 3);
INSERT INTO student_semester VALUES (14, 5);
INSERT INTO student_semester VALUES (15, 1);
INSERT INTO student_semester VALUES (15, 2);
INSERT INTO student_semester VALUES (15, 3);
INSERT INTO student_semester VALUES (15, 5);
#math
INSERT INTO student_semester VALUES (16, 1);
INSERT INTO student_semester VALUES (16, 2);
INSERT INTO student_semester VALUES (17, 1);
INSERT INTO student_semester VALUES (17, 2);
INSERT INTO student_semester VALUES (18, 1);
INSERT INTO student_semester VALUES (18, 2);
INSERT INTO student_semester VALUES (18, 3);
INSERT INTO student_semester VALUES (18, 5);
INSERT INTO student_semester VALUES (19, 1);
INSERT INTO student_semester VALUES (19, 2);
INSERT INTO student_semester VALUES (19, 3);
INSERT INTO student_semester VALUES (19, 5);
INSERT INTO student_semester VALUES (20, 1);
INSERT INTO student_semester VALUES (20, 2);
INSERT INTO student_semester VALUES (20, 3);
INSERT INTO student_semester VALUES (20, 5);

#info
INSERT INTO student_section VALUES (1, 3);
INSERT INTO student_section VALUES (1, 14);
INSERT INTO student_section VALUES (2, 3);
INSERT INTO student_section VALUES (2, 14);
INSERT INTO student_section VALUES (3, 1);
INSERT INTO student_section VALUES (3, 12);
INSERT INTO student_section VALUES (3, 16);
INSERT INTO student_section VALUES (3, 20);
INSERT INTO student_section VALUES (4, 1);
INSERT INTO student_section VALUES (4, 12);
INSERT INTO student_section VALUES (4, 16);
INSERT INTO student_section VALUES (4, 21);
INSERT INTO student_section VALUES (5, 2);
INSERT INTO student_section VALUES (5, 12);
INSERT INTO student_section VALUES (5, 16);
INSERT INTO student_section VALUES (5, 20);
INSERT INTO student_section VALUES (5, 24);
#student_course_history(studentid, course_num, grade_received)
INSERT INTO student_course_history VALUES(1, 1, 3.92);
INSERT INTO student_course_history VALUES(1, 2, 3.33);
INSERT INTO student_course_history VALUES(2, 1, 3.42);
INSERT INTO student_course_history VALUES(2, 2, 3.09);
INSERT INTO student_course_history VALUES(3, 1, 3.76);
INSERT INTO student_course_history VALUES(3, 2, 3.44);
INSERT INTO student_course_history VALUES(3, 3, 2.92);
INSERT INTO student_course_history VALUES(3, 4, 3.55);
INSERT INTO student_course_history VALUES(4, 1, 4.00);
INSERT INTO student_course_history VALUES(4, 2, 3.88);
INSERT INTO student_course_history VALUES(4, 3, 3.92);
INSERT INTO student_course_history VALUES(4, 4, 3.68);
INSERT INTO student_course_history VALUES(5, 1, 3.76);
INSERT INTO student_course_history VALUES(5, 2, 3.44);
INSERT INTO student_course_history VALUES(5, 3, 3.11);
INSERT INTO student_course_history VALUES(5, 4, 3.52);
INSERT INTO student_course_history VALUES(5, 5, 3.23);

#finance
INSERT INTO student_section VALUES (6, 30);
INSERT INTO student_section VALUES (6, 34);
INSERT INTO student_section VALUES (7, 30);
INSERT INTO student_section VALUES (7, 34);
INSERT INTO student_section VALUES (8, 28);
INSERT INTO student_section VALUES (8, 33);
INSERT INTO student_section VALUES (8, 37);
INSERT INTO student_section VALUES (8, 41);
INSERT INTO student_section VALUES (9, 28);
INSERT INTO student_section VALUES (9, 33);
INSERT INTO student_section VALUES (9, 38);
INSERT INTO student_section VALUES (9, 42);
INSERT INTO student_section VALUES (10, 28);
INSERT INTO student_section VALUES (10, 33);
INSERT INTO student_section VALUES (10, 37);
INSERT INTO student_section VALUES (10, 41);
INSERT INTO student_section VALUES (10, 45);
#student_course_history(studentid, course_num, grade_received)
INSERT INTO student_course_history VALUES(6, 6, 3.78);
INSERT INTO student_course_history VALUES(6, 8, 3.45);
INSERT INTO student_course_history VALUES(7, 6, 3.31);
INSERT INTO student_course_history VALUES(7, 8, 3.67);
INSERT INTO student_course_history VALUES(8, 6, 3.77);
INSERT INTO student_course_history VALUES(8, 8, 3.82);
INSERT INTO student_course_history VALUES(8, 9, 2.67);
INSERT INTO student_course_history VALUES(8, 10, 3.00);
INSERT INTO student_course_history VALUES(9, 6, 2.85);
INSERT INTO student_course_history VALUES(9, 8, 3.44);
INSERT INTO student_course_history VALUES(9, 9, 3.54);
INSERT INTO student_course_history VALUES(9, 10, 3.46);
INSERT INTO student_course_history VALUES(10, 6, 3.15);
INSERT INTO student_course_history VALUES(10, 8, 3.44);
INSERT INTO student_course_history VALUES(10, 9, 3.11);
INSERT INTO student_course_history VALUES(10, 10, 3.39);
INSERT INTO student_course_history VALUES(10, 11, 3.23);
#music
INSERT INTO student_section VALUES (11, 51);
INSERT INTO student_section VALUES (11, 71);
INSERT INTO student_section VALUES (12, 51);
INSERT INTO student_section VALUES (12, 71);
INSERT INTO student_section VALUES (13, 49);
INSERT INTO student_section VALUES (13, 69);
INSERT INTO student_section VALUES (13, 73);
INSERT INTO student_section VALUES (13, 77);
INSERT INTO student_section VALUES (14, 49);
INSERT INTO student_section VALUES (14, 69);
INSERT INTO student_section VALUES (14, 73);
INSERT INTO student_section VALUES (14, 77);
INSERT INTO student_section VALUES (15, 50);
INSERT INTO student_section VALUES (15, 71);
INSERT INTO student_section VALUES (15, 73);
INSERT INTO student_section VALUES (15, 77);
INSERT INTO student_section VALUES (15, 84);
#student_course_history(studentid, course_num, grade_received)
INSERT INTO student_course_history VALUES(11, 12, 3.78);
INSERT INTO student_course_history VALUES(11, 13, 3.44);
INSERT INTO student_course_history VALUES(12, 12, 3.11);
INSERT INTO student_course_history VALUES(12, 13, 3.12);
INSERT INTO student_course_history VALUES(13, 12, 3.02);
INSERT INTO student_course_history VALUES(13, 13, 3.12);
INSERT INTO student_course_history VALUES(13, 14, 2.77);
INSERT INTO student_course_history VALUES(13, 15, 2.08);
INSERT INTO student_course_history VALUES(14, 12, 4.00);
INSERT INTO student_course_history VALUES(14, 13, 2.88);
INSERT INTO student_course_history VALUES(14, 14, 3.47);
INSERT INTO student_course_history VALUES(14, 15, 3.66);
INSERT INTO student_course_history VALUES(15, 12, 3.33);
INSERT INTO student_course_history VALUES(15, 13, 3.24);
INSERT INTO student_course_history VALUES(15, 14, 3.11);
INSERT INTO student_course_history VALUES(15, 15, 3.08);
INSERT INTO student_course_history VALUES(15, 16, 3.23);
#math
INSERT INTO student_section VALUES (16, 86);
INSERT INTO student_section VALUES (16, 92);
INSERT INTO student_section VALUES (17, 86);
INSERT INTO student_section VALUES (17, 92);
INSERT INTO student_section VALUES (18, 86);
INSERT INTO student_section VALUES (18, 90);
INSERT INTO student_section VALUES (18, 94);
INSERT INTO student_section VALUES (18, 100);
INSERT INTO student_section VALUES (19, 86);
INSERT INTO student_section VALUES (19, 90);
INSERT INTO student_section VALUES (19, 94);
INSERT INTO student_section VALUES (19, 100);
INSERT INTO student_section VALUES (20, 85);
INSERT INTO student_section VALUES (20, 89);
INSERT INTO student_section VALUES (20, 93);
INSERT INTO student_section VALUES (20, 97);
INSERT INTO student_section VALUES (20, 102);
#student_course_history(studentid, course_num, grade_received)
INSERT INTO student_course_history VALUES(16, 17, 3.92);
INSERT INTO student_course_history VALUES(16, 18, 3.33);
INSERT INTO student_course_history VALUES(17, 17, 3.42);
INSERT INTO student_course_history VALUES(17, 18, 3.09);
INSERT INTO student_course_history VALUES(18, 17, 3.76);
INSERT INTO student_course_history VALUES(18, 18, 3.44);
INSERT INTO student_course_history VALUES(18, 19, 2.92);
INSERT INTO student_course_history VALUES(18, 20, 3.55);
INSERT INTO student_course_history VALUES(19, 19, 4.00);
INSERT INTO student_course_history VALUES(19, 18, 3.88);
INSERT INTO student_course_history VALUES(19, 19, 3.92);
INSERT INTO student_course_history VALUES(19, 20, 3.68);
INSERT INTO student_course_history VALUES(20, 17, 3.76);
INSERT INTO student_course_history VALUES(20, 18, 3.44);
INSERT INTO student_course_history VALUES(20, 19, 3.11);
INSERT INTO student_course_history VALUES(20, 20, 3.52);
INSERT INTO student_course_history VALUES(20, 21, 3.23);

