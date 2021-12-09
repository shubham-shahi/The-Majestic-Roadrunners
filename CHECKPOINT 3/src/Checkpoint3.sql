SELECT trr_counts.date_part as year,location, sum(count) as trr_total
FROM (SELECT EXTRACT(year from trr_datetime) as date_part, location as location ,count(*) as count
     FROM trr_trr
     GROUP BY trr_datetime,location) as trr_counts
GROUP BY trr_counts.date_part,location

SELECT trr_counts.date_part as year,subject_race, sum(count) as trr_total
FROM (SELECT EXTRACT(year from trr_datetime) as date_part, subject_race as subject_race,count(*) as count
     FROM trr_trr
     GROUP BY trr_datetime,subject_race) as trr_counts
GROUP BY trr_counts.date_part,subject_race

