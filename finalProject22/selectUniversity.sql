#1a
SELECT DISTINCT CONCAT (s.last_name,' ',s.first_name) AS Name
FROM student_section AS ss, student AS s
WHERE ss.studentid = s.studentid AND ss.sectionid=1
GROUP BY s.last_name;

#2a
SELECT crf.roomid
FROM classroom_feature AS crf, classroom AS cr, room AS r
WHERE r.roomid=cr.roomid AND cr.roomid=crf.roomid and crf.Feature='Lecture Hall';

#3b
SELECT CONCAT (f.first_name,' ',f.last_name) AS Name
FROM Faculty AS f
WHERE f.facultyid NOT IN
	(SELECT fs.facultyid
	FROM faculty_section AS fs, course AS c, section AS s
	WHERE s.course_num=c.course_num AND s.sectionid=fs.sectionid AND 
	(c.course_num=1 OR c.course_num=6));
    
#4c
SELECT DISTINCT CONCAT(s.first_name,' ',s.last_name) AS Name, 
	concat(c.title, ' ', c.course_number) AS course, sch.grade_received AS 
	grade
FROM Student AS s, course_prereq AS cpr, student_course_history AS sch, 
	course AS c, student_section AS ss, semester AS sem, section AS sec
WHERE s.studentid=sch.studentid AND sch.course_num=c.course_num AND ss.studentid = s.studentid AND 
	ss.studentid = sch.studentid AND sec.sectionid = sem.semid  AND sch.studentid NOT IN (
		SELECT s.studentid
		FROM Student AS s, course_prereq AS cpr, student_course_history AS 
		sch
		WHERE cpr.course_num=sch.course_num AND s.studentid=sch.studentid);

#7a
SELECT DISTINCT  s.first_name, s.last_name, b.buildingid, d.Type
FROM student AS s, dorm_room AS d, building AS b, Room AS r
WHERE s.roomid=r.roomid AND b.buildingid = r.buildingid AND b.buildingid='Read';

#8b
SELECT CONCAT (st.first_name,' ',st.last_name) AS Name, pp.Phone
FROM Student AS st, Parent AS p, Parent_Phone AS pp
WHERE st.studentid=p.studentid AND p.parentid=pp.parentid AND st.studentid NOT IN (
	SELECT st.studentid
	FROM Student AS st, Section AS s, Student_Section AS ss
	WHERE st.studentid=ss.studentid AND s.sectionid=ss.sectionid AND s.SemID=4 AND 
	s.SemID=3)
ORDER BY st.last_name;