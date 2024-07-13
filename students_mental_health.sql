-- Run this code to save the CSV file as students
SELECT * 
FROM 'students.csv';

SELECT COUNT(*)
FROM students;

SELECT inter_dom,COUNT(*)
FROM students
GROUP BY inter_dom;

SELECT * 
FROM students
WHERE inter_dom ='Inter';

SELECT * 
FROM students 
WHERE inter_dom = 'Dom';

SELECT AVG(age) AS avg_age,
    AVG(stay) AS avg_stay,
    ROUND(AVG(todep),2) AS avg_todep,
    ROUND(AVG(tosc),2) AS avg_tosc,
    ROUND(AVG(toas),2) AS avg_toas
FROM students;

SELECT AVG(age) AS avg_age,
    AVG(stay) AS avg_stay,
    ROUND(AVG(todep),2) AS avg_todep,
    ROUND(AVG(tosc),2) AS avg_tosc,
    ROUND(AVG(toas),2) AS avg_toas
FROM students
WHERE inter_dom ='Inter';

SELECT inter_dom,
    AVG(age) AS avg_age,
    AVG(stay) AS avg_stay,
    ROUND(AVG(todep),2) AS average_phq,
    ROUND(AVG(tosc),2) AS average_scs,
    ROUND(AVG(toas),2) AS average_as
FROM students
GROUP BY inter_dom
ORDER BY avg_stay DESC;

SELECT 
    stay,
    ROUND(AVG(todep),2) AS average_phq,
    ROUND(AVG(tosc),2) AS average_scs,
    ROUND(AVG(toas),2) AS average_as
FROM students
WHERE inter_dom= 'Inter'
GROUP BY stay
ORDER BY stay DESC;