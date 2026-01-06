--inpatient fields--
----------------------------------------------

--desynpuf, clm_id, and segment PK, check for repeats/nulls
SELECT desynpuf_id,clm_id,segment, COUNT(*)
FROM raw.inpatient_claims
GROUP BY desynpuf_id,clm_id,segment
HAVING COUNT(*)>1 ;

SELECT desynpuf_id,clm_id,segment
FROM raw.inpatient_claims
WHERE desynpuf_id IS NULL OR clm_id IS NULL OR segment IS NULL;

--------------
--check that icd9 codes are valid 
--checks that length between 3 and 5 and only alphanumeric
WITH inpatient_icd_codes AS (
SELECT desynpuf_id,clm_id,segment,x.*
FROM raw.inpatient_claims, jsonb_each_text(to_jsonb(raw.inpatient_claims)) AS x(colname,colval)
WHERE x.colname ~ '^.*icd9.*$')
SELECT * FROM inpatient_icd_codes
WHERE
LENGTH(colval) > 5 OR LENGTH(colval) < 3 OR colval ~ '[^a-zA-Z0-9]';

--carrier_claims--
SELECT * FROM raw.carrier_claims
LIMIT 10;

--desynpuf, clm_id PK, check for repeats/nulls
SELECT desynpuf_id,clm_id, COUNT(*)
FROM raw.carrier_claims
GROUP BY desynpuf_id,clm_id
HAVING COUNT(*)>1 ;

SELECT desynpuf_id,clm_id
FROM raw.carrier_claims
WHERE desynpuf_id IS NULL or clm_id IS NULL;

--check that icd9 codes are valid 
--checks that length between 3 and 5 and only alphanumeric
-- a more thorough analysis would check exact icd9 codes against those reported

WITH carrier_icd_codes AS(
    SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_1' AS icd_code, icd9_dgns_cd_1 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_2' AS icd_code, icd9_dgns_cd_2 AS code_value FROM raw.carrier_claims
    UNION ALL	
	SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_3' AS icd_code, icd9_dgns_cd_3 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_4' AS icd_code, icd9_dgns_cd_4 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_5' AS icd_code, icd9_dgns_cd_5 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_6' AS icd_code, icd9_dgns_cd_6 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_7' AS icd_code, icd9_dgns_cd_7 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'icd9_dgns_cd_8' AS icd_code, icd9_dgns_cd_8 AS code_value FROM raw.carrier_claims
	UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_1' AS icd_code, line_icd9_dgns_cd_1 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_2' AS icd_code, line_icd9_dgns_cd_2 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_3' AS icd_code, line_icd9_dgns_cd_3 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_4' AS icd_code, line_icd9_dgns_cd_4 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_5' AS icd_code, line_icd9_dgns_cd_5 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_6' AS icd_code, line_icd9_dgns_cd_6 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_7' AS icd_code, line_icd9_dgns_cd_7 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_8' AS icd_code, line_icd9_dgns_cd_8 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_9' AS icd_code, line_icd9_dgns_cd_9 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_10' AS icd_code, line_icd9_dgns_cd_10 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_11' AS icd_code, line_icd9_dgns_cd_11 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_12' AS icd_code, line_icd9_dgns_cd_12 AS code_value FROM raw.carrier_claims
    UNION ALL
    SELECT desynpuf_id, clm_id, 'line_icd9_dgns_cd_13' AS icd_code, line_icd9_dgns_cd_13 AS code_value FROM raw.carrier_claims
)
SELECT * FROM carrier_icd_codes
WHERE
LENGTH(code_value) > 5 OR LENGTH(code_value) < 3 OR code_value ~ '[^a-zA-Z0-9]';



-- there are 18 incorrect icd codes, set to null
-- in future can think about sending incorrect codes to a log table or setting flag 



SELECT * FROM raw.beneficiaries
limit 10;
-- find claims that have more than one segment 
WITH add_segments AS(
SELECT clm_id FROM raw.inpatient_claims
WHERE segment != '1'
)
SELECT * FROM raw.inpatient_claims 
WHERE clm_id in (SELECT clm_id FROM add_segments);


SELECT desynpuf_id,hcpcs_cd_1,
CASE 
	WHEN LINE_PRCSG_IND_CD_1 ~ '^\d$'
		THEN '0' || LINE_PRCSG_IND_CD_1
	WHEN LINE_PRCSG_IND_CD_1 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
		THEN NULL
	ELSE 
		UPPER(LINE_PRCSG_IND_CD_1)
	END AS line_cd
FROM 
raw.carrier_claims
WHERE LINE_PRCSG_IND_CD_1 ~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
LIMIT 10;


SELECT LINE_PRCSG_IND_CD_1 FROM raw.carrier_claims
WHERE LINE_PRCSG_IND_CD_1 = '00'
LIMIT 100;

------check validity of hcpcs codes 
SELECT * FROM raw.carrier_claims
WHERE hcpcs_cd_2 !~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
LIMIT 10;

--- 
SELECT * FROM beneficiaries
LIMIT 20;
---

SELECT desynpuf_id,hcpcs_cd_1,LINE_PRCSG_IND_CD_1 FROM raw.carrier_claims
WHERE desynpuf_id = '3833A3F180F698F7'
ORDER BY clm_from_dt