CREATE TABLE students (
	student_id serial Primary Key,
	first_name text Not Null,
	last_name text Not Null,
	date_of_birth date,
	email text Unique
)

INSERT INTO students
VALUES (DEFAULT, 'John', 'Doe', '1990-01-15', 'john.doe@example.com')

INSERT INTO students
VALUES (DEFAULT, 'Jane', 'Smith', '1992-05-20', 'jane.smith@example.com'),
(DEFAULT, 'Michael', 'Johnson', '1991-09-10', 'michael.johnson@example.com'),
(DEFAULT, 'Emily', 'Davis', '1993-03-25', 'emily.davis@example.com');

CREATE TABLE teachers (
	teacher_id serial Primary Key,
	first_name text Not Null,
	last_name text Not Null,
	date_of_birth date,
	email text Unique,
	department text,
	hire_date date
)

INSERT INTO teachers
VALUES
  (DEFAULT, 'Professor', 'Anderson', '1975-04-08', 'prof.anderson@example.com', 'Computer Science', '2010-08-15'),
  (DEFAULT, 'Dr. Sarah', 'Wilson', '1980-12-20', 'sarah.wilson@example.com', 'Mathematics', '2015-05-02'),
  (DEFAULT, 'Mr. James', 'Brown', '1978-06-14', 'james.brown@example.com', 'History', '2009-11-11');

CREATE TABLE courses (
	course_id SERIAL PRIMARY KEY,
	course_name TEXT NOT NULL,
	department TEXT,
	credits NUMERIC
)

INSERT INTO courses
VALUES
  (DEFAULT, 'Introduction to Programming', 'Computer Science', 3),
  (DEFAULT, 'Calculus I', 'Mathematics', 4),
  (DEFAULT, 'World History', 'History', 3);

