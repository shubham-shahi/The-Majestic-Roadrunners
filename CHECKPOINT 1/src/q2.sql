Q2. What is the proportion of subjects injured to that of officers injured in the use of firearms?


-------/*2.1 It returns the number of subjects that used firearms and got injured------

WITH subjectinjured as(
SELECT t.subject_injured,
count(CASE WHEN firearm_used = 'true' THEN 1 END) AS firearm_used
FROM trr_trr t
GROUP BY t.firearm_used,t.subject_injured
ORDER BY firearm_used desc
LIMIT 2)
select subjectinjured.subject_injured,subjectinjured.firearm_used
from subjectinjured


-----/*2.2It returns the number of officers who used firearms and got injured-------

WITH officerinjured as(
SELECT t.officer_injured,
count(CASE WHEN firearm_used = 'true' THEN 1 END) AS firearm_used
FROM trr_trr t
GROUP BY t.firearm_used,t.officer_injured
ORDER BY firearm_used desc
LIMIT 2)
select officerinjured.officer_injured,officerinjured.firearm_used
from officerinjured
