-- Active: 1694602835533@@127.0.0.1@5432@university
CREATE TABLE study_group (
	group_id SERIAL PRIMARY KEY,
	group_name TEXT
);
INSERT INTO study_group
VALUES
	(DEFAULT, 'group 1'),
	(DEFAULT, 'group 2'),
    (DEFAULT, 'group 3');

CREATE TABLE membership_in_groups (
    membership_id SERIAL PRIMARY KEY,
    group_id INTEGER,
    student_id INTEGER,
    Foreign Key (group_id) REFERENCES study_group(group_id),
    Foreign Key (student_id) REFERENCES students(student_id)
);

INSERT INTO membership_in_groups
VALUES
    (DEFAULT, 1, 1),
    (DEFAULT, 1, 2),
    (DEFAULT, 1, 3),
    (DEFAULT, 2, 3),
    (DEFAULT, 2, 4);

SELECT * from courses;
SELECT * from enrollments;
SELECT * FROM grades;
SELECT * FROM membership_in_groups;
SELECT * FROM students;
SELECT * FROM study_group;
SELECT * FROM teacher_course;
SELECT * FROM teachers;

-- make the enrollments unique
ALTER TABLE enrollments
ADD CONSTRAINT unique_enrollments UNIQUE (course_id, student_id);