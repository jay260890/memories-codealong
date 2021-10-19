DROP TABLE IF EXISTS lectures;
DROP TABLE IF EXISTS courses;

CREATE TABLE courses (
  id integer PRIMARY KEY,
  name varchar(50) NOT NULL,
  description varchar(120) NOT NULL,
  start_date date
);

INSERT INTO courses
  (id, name, description)
VALUES
  (1, 'Tech Fundamentals', 'Uplevel your knowledge in the fundamentals of technology');

SELECT * FROM courses;

CREATE TABLE lectures (
  id integer PRIMARY KEY,
  name varchar(50) NOT NULL,
  description varchar(120) NOT NULL,
  course_id integer REFERENCES courses (id)
);

INSERT INTO lectures
  (id, name, description, course_id)
VALUES
  (1, 'Memories', 'Data, Data Persistence, Cookies, Local Storage, Databases', 1);

SELECT * FROM lectures;