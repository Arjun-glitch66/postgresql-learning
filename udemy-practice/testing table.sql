
-- PostgreSQL Learning
-- Lesson 1: Creating a table and inserting data

-- Check the PostgreSQL version
SELECT version();

-- Check the current database
SELECT current_database();

-- Create the students table
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50)
);

-- Insert sample student records
INSERT INTO students (student_id, name, department)
VALUES
    (1, 'Arun', 'CSE'),
    (2, 'Priya', 'ECE'),
    (3, 'Rahul', 'CSE');

-- Display all students
SELECT * FROM students;

-- Filter students by department
SELECT *
FROM students
WHERE department = 'CSE';
