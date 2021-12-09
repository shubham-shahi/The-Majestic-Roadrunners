------table1----------
SELECT da1.officer_id src, da2.officer_id dst, COUNT(CASE WHEN firearm_used= 'true' THEN 1 END) relationship
FROM trr_trrstatus da1 JOIN trr_trr da2
ON da1.id = da2.id AND da1.officer_id < da2.officer_id
GROUP BY da1.officer_id, da2.officer_id ORDER BY count(CASE WHEN firearm_used= 'true' THEN 1 END) DESC limit 542


--------table2-----------
With sam as(
SELECT da1.force_type, da2.officer_id,da1.id
FROM trr_actionresponse da1 JOIN trr_trr da2
ON da1.id = da2.id
GROUP BY da1.id, da2.officer_id)
SELECT da1.id src, da2.id dst, COUNT(da1.action) relationship
FROM trr_actionresponse da1 JOIN trr_actionresponse da2
ON da1.id = da2.id AND da1.id < da2.id
GROUP BY da1.id, da2.id ORDER BY count(*) DESC


DROP TABLE IF EXISTS officers_on_scene;
CREATE TEMP TABLE officers_on_scene AS (SELECT t.id trr_id, t.officer_id trr_officer,  d.officer_id
FROM trr_trr t JOIN data_officerassignmentattendance d ON  d.start_timestamp <= trr_datetime AND trr_datetime <= d.end_timestamp
                                                               JOIN data_policebeat b ON d.beat_id=b.id
                                                                JOIN data_area a ON b.area_id = a.id
WHERE present_for_duty AND t.officer_id <> d.officer_id AND st_intersects(point, a.polygon)
ORDER BY trr_id);