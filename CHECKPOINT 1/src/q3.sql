Q3. Based on Demographics(Age, gender, etc), which group of subjects are most likely to be involved in firearms?
a) Age group 
b) Gender
c) Race


--------/3.1* It returns the age-range of the subjects which are most likely to be involved in firearms--------
SELECT CASE
       WHEN subject_age BETWEEN 0 AND 20 THEN '0-20'
       WHEN subject_age BETWEEN 20 AND 40 THEN '20-40'
       WHEN subject_age BETWEEN 40 AND 60 THEN '40-60'
       WHEN subject_age BETWEEN 60 AND 80 THEN '60-80'
       WHEN subject_age > 80 THEN '>80' END AS age_range,
      count(CASE WHEN firearm_used = 'true' THEN 1 END) AS firearm_used,
      count(CASE WHEN firearm_used = 'true' THEN 1 END)*100/count(*) AS percentage_firearmused

FROM trr_trr
group by age_range
order by age_range


--------/3.2* It returns the gender of the subjects which are most likely to be involved in firearms----------
SELECT t.subject_gender,
      count(CASE WHEN firearm_used = 'true' THEN 1 END) AS firearm_used
FROM trr_trr t
GROUP BY t.firearm_used,t.subject_gender
ORDER BY firearm_used desc
LIMIT 2


--------/3.3* It returns the race of the subjects which are most likely to be involved in firearms-----------

SELECT t.subject_race,
      count(CASE WHEN firearm_used = 'true' THEN 1 END) AS firearm_used
FROM trr_trr t
GROUP BY t.firearm_used,t.subject_race
ORDER BY firearm_used desc
LIMIT 5


