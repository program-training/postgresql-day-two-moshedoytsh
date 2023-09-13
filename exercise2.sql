CREATE TABLE enrollments (
	enrollment_id SERIAL PRIMARY KEY,
	student_id INTEGER,
	course_id INTEGER,
	FOREIGN KEY (student_id) REFERENCES students(student_id),
	FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO enrollments
VALUES (DEFAULT, 1, 1),
	(DEFAULT, 2, 1),
	(DEFAULT, 3, 2),
	(DEFAULT, 4, 3),
	(DEFAULT, 1, 3);

CREATE TABLE teacher_course (
	teacher_course_id SERIAL PRIMARY KEY,
	teacher_id INTEGER,
	course_id INTEGER
);

INSERT INTO teacher_course
VALUES (DEFAULT, 1, 1),
	(DEFAULT, 2, 2),
	(DEFAULT, 3, 3);

CREATE TABLE grades (
	grade_id SERIAL PRIMARY KEY,
	enrollment_id INTEGER,
	grade NUMERIC(5, 2),
	FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id)
);

INSERT INTO grades
VALUES
	(DEFAULT, 1, 60),
	(DEFAULT, 2, 80),
	(DEFAULT, 3, 97.5),
	(DEFAULT, 4, 43.5),
	(DEFAULT, 5, 74);
