/*
=============================================================================
FIX THIS FILE: currently alters raw beneficiaries and creates one table with all years
of beneficiaries, then checks for duplicates and consistent counts
TO DO: should keep raw files as is or merge through a Python script beforehand
Save testing for a separate file. 
=============================================================================
*/

-- year column for beneficiaries
ALTER TABLE raw.beneficiaries_08
ADD COLUMN IF NOT EXISTS ben_year INT DEFAULT 2008;
ALTER TABLE raw.beneficiaries_09
ADD COLUMN IF NOT EXISTS ben_year INT DEFAULT 2009;
ALTER TABLE raw.beneficiaries_10
ADD COLUMN IF NOT EXISTS ben_year INT DEFAULT 2010;

-- ensure no duplicates in benficiary id for each year
SELECT desynpuf_id,COUNT(desynpuf_id)
FROM beneficiaries_08
GROUP BY desynpuf_id
HAVING COUNT(desynpuf_id)>1;

SELECT desynpuf_id,COUNT(desynpuf_id)
FROM raw.beneficiaries_09
GROUP BY desynpuf_id
HAVING COUNT(desynpuf_id)>1;

SELECT desynpuf_id,COUNT(desynpuf_id)
FROM raw.beneficiaries_10
GROUP BY desynpuf_id
HAVING COUNT(desynpuf_id)>1;

-- combine benficiaries
DROP TABLE IF EXISTS raw.beneficiaries;
CREATE TABLE IF NOT EXISTS raw.beneficiaries AS
(
SELECT * FROM raw.beneficiaries_08
UNION ALL
SELECT * FROM raw.beneficiaries_09
UNION ALL 
SELECT * FROM raw.beneficiaries_10
);

-- check counts from union
SELECT 
(SELECT COUNT(*) FROM raw.beneficiaries_08)+
(SELECT COUNT(*) FROM raw.beneficiaries_09)+
(SELECT COUNT(*) FROM raw.beneficiaries_10) AS comb_count_real,
(SELECT COUNT(*) FROM raw.beneficiaries) AS comb_count_union;


