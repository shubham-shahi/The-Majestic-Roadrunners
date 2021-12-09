Q1. What were the top 10 types of force(Physical force, verbal command, etc) exhibited by the officer that ended up in use of the firearm?

------/*1 It returns the top force types that used firearms in the TRR data---------


WITH firus as (SELECT count(t.firearm_used)as firearm_used,
          ta.force_type as force_type
          FROM trr_trr as t
          INNER JOIN trr_actionresponse as ta
          ON t.id =ta.trr_id
          WHERE t.firearm_used='true'

          GROUP BY ta.force_type,t.firearm_used
          ORDER BY count(force_type)  DESC
          LIMIT 10)

SELECT firus.firearm_used,firus.force_type
FROM  firus
