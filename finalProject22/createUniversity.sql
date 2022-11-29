CREATE TABLE building (
	buildingid VARCHAR(10) NOT NULL,
    name VARCHAR(50),
    address VARCHAR(70),
    PRIMARY KEY (buildingid)
);
CREATE TABLE room (
	roomid INT AUTO_INCREMENT NOT NULL,
    buildingid VARCHAR(10),
    PRIMARY KEY (roomid),
    FOREIGN KEY (buildingid) REFERENCES building(buildingid)
);
CREATE TABLE dorm_room (
	roomid INT NOT NULL,
    type VARCHAR(10),
    fee INT,
    FOREIGN KEY (roomid) REFERENCES room(roomid)
);
CREATE TABLE classroom (
	roomid INT NOT NULL,
    capacity INT,
    FOREIGN KEY (roomid) REFERENCES room(roomid)
);
CREATE TABLE office (
	roomid INT NOT NULL,
    phone VARCHAR(15),
    FOREIGN KEY (roomid) REFERENCES room(roomid)
);
CREATE TABLE classroom_feature (
	roomid INT NOT NULL,
    feature VARCHAR(400),
    FOREIGN KEY (roomid) REFERENCES classroom(roomid)
);
CREATE TABLE semester (
	semid INT AUTO_INCREMENT NOT NULL,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (semid)
);
CREATE TABLE department (
	deptid INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(25) NOT NULL,
    cp_fname VARCHAR(25),
    cp_lname VARCHAR(25),
    PRIMARY KEY (deptid)
);
CREATE TABLE student (
	studentid INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(40),
    street VARCHAR(100),
    city VARCHAR(100),
    zip INT(9),
    phone VARCHAR(15),
    email VARCHAR(30),
    roomid INT,
    PRIMARY KEY(studentid),
    FOREIGN KEY (roomid) REFERENCES dorm_room(roomid)
);
CREATE TABLE course (
	course_num INT AUTO_INCREMENT NOT NULL,
    subject VARCHAR(6) NOT NULL,
    cred_hours INT(1),
    deptid INT,
    course_number VARCHAR(11),
    title VARCHAR(50),
    PRIMARY KEY (course_num),
    FOREIGN KEY (deptid) REFERENCES department(deptid)
);
CREATE TABLE course_prereq (
	subject VARCHAR(6) NOT NULL,
    course_num INT, 
    course_number VARCHAR(11),
    FOREIGN KEY (course_num) REFERENCES course(course_num)
);
CREATE TABLE student_course_history (
	studentid INT,
    course_num INT,
    grade_received DECIMAL(4, 2),
    FOREIGN KEY (studentid) REFERENCES student(studentid),
    FOREIGN KEY (course_num) REFERENCES course(course_num)
);
CREATE TABLE student_phone (
	phone VARCHAR(15),
    type VARCHAR(25),
    studentid INT,
    FOREIGN KEY (studentid) REFERENCES student(studentid)
);
CREATE TABLE dorm_payment (
	amount INT, 
    type VARCHAR(15),
    date DATE,
    studentid INT NOT NULL,
    roomid INT NOT NULL,
    FOREIGN KEY (studentid) REFERENCES student(studentid),
    FOREIGN KEY (roomid) REFERENCES dorm_room(roomid)
);
CREATE TABLE parent (
	parentid INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(40),
    studentid INT NOT NULL,
    PRIMARY KEY(parentid),
    FOREIGN KEY (studentid) REFERENCES student(studentid)
);
CREATE TABLE parent_phone (
	phone VARCHAR(15),
    type VARCHAR(25),
    parentid INT NOT NULL,
    FOREIGN KEY (parentid) REFERENCES parent(parentid)
);
CREATE TABLE section (
	sectionid INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(25) NOT NULL,
    start_date DATE,
    end_date DATE,
    course_num INT(11),
    semid INT(11),
    PRIMARY KEY (sectionid),
    FOREIGN KEY (course_num) REFERENCES course(course_num),
    FOREIGN KEY (semid) REFERENCES semester(semid)
);
CREATE TABLE student_section (
	studentid INT NOT NULL,
    sectionid INT NOT NULL,
    FOREIGN KEY (studentid) REFERENCES student(studentid),
    FOREIGN KEY (sectionid) REFERENCES section(sectionid)
);
CREATE TABLE faculty (
	facultyid INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    fac_rank VARCHAR(20),
    hire_date DATE,
    phone VARCHAR(15),
    email VARCHAR(30),
    deptid INT,
    roomid INT,
    PRIMARY KEY (facultyid),
    FOREIGN KEY (deptid) REFERENCES department(deptid),
    FOREIGN KEY (roomid) REFERENCES office(roomid)
);
CREATE TABLE student_semester (
	studentid INT NOT NULL,
    semid INT NOT NULL,
    FOREIGN KEY (studentid) REFERENCES student(studentid),
    FOREIGN KEY (semid) REFERENCES semester(semid)
);
CREATE TABLE section_semester (
	sectionid INT NOT NULL,
    semid INT NOT NULL,
    FOREIGN KEY (sectionid) REFERENCES section(sectionid),
    FOREIGN KEY (semid) REFERENCES semester(semid)
);
CREATE TABLE course_room (
	course_num INT NOT NULL,
    roomid INT NOT NULL,
    facultyid INT NOT NULL,
    FOREIGN KEY (course_num) REFERENCES course(course_num),
    FOREIGN KEY (roomid) REFERENCES classroom(roomid),
    FOREIGN KEY (facultyid) REFERENCES faculty(facultyid)
);
CREATE TABLE faculty_section (
	facultyid INT NOT NULL,
    sectionid INT NOT NULL,
    FOREIGN KEY (facultyid) REFERENCES faculty(facultyid),
    FOREIGN KEY (sectionid) REFERENCES section(sectionid)
);
CREATE TABLE course_section (
	course_num INT NOT NULL,
    sectionid INT NOT NULL,
    FOREIGN KEY (course_num) REFERENCES course(course_num),
    FOREIGN KEY (sectionid) REFERENCES section(sectionid)
);
CREATE TABLE grade (
	grade DECIMAL(4,2),
    gpa DECIMAL(4,2),
    studentid INT,
    sectionid INT,
    semid INT,
    FOREIGN KEY (studentid) REFERENCES student(studentid),
    FOREIGN KEY (sectionid) REFERENCES section(sectionid),
    FOREIGN KEY (semid) REFERENCES semester(semid)
);
CREATE TABLE major (
	majorid INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    hours_to_graduate INT,
    deptid INT,
    PRIMARY KEY (majorid),
    FOREIGN KEY (deptid) REFERENCES department(deptid)
);