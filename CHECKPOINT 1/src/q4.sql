Q4.What proportion of the subjects carried weapons in the events that involved the use of firearms?

 
 -------/4* It returns the proportion of the subjects carrying arms that involved the use of firearms-------

WITH subjectarmed as(
SELECT t.subject_armed,
count(CASE WHEN firearm_used = 'true' THEN 1 END) AS firearm_used
FROM trr_trr t
GROUP BY t.firearm_used,t.subject_armed
ORDER BY firearm_used desc
LIMIT 2)
select subjectarmed.subject_armed,subjectarmed.firearm_used
from subjectarmed
