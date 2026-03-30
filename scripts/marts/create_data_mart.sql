/*
============================================================
IN PROGRESS:
	Created diagnosis and procedure dimension views by 
	unpivoting codes from all claims tables
TODO: 
	Should separate fact and dimension tables into separate 
	files 
============================================================
*/

-- SELECT * FROM standardized.outpatient_claims
-- LIMIT 100;

------------------------------------------
-----DIAGNOSIS VIEW------------------------
-----------------------------------------
CREATE VIEW standardized.Diagnosis AS
WITH carrier_diagnosis_codes AS (
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
        icd9_code
    FROM standardized.carrier_claims,
    LATERAL (
        VALUES
            ('1', icd9_dgns_cd_1),
            ('2', icd9_dgns_cd_2),
            ('3', icd9_dgns_cd_3),
            ('4', icd9_dgns_cd_4),
            ('5', icd9_dgns_cd_5),
            ('6', icd9_dgns_cd_6),
            ('7', icd9_dgns_cd_7),
            ('8', icd9_dgns_cd_8)
    ) AS t(code_line, icd9_code)
    WHERE icd9_code IS NOT NULL
),
inpatient_diagnosis_codes AS(
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
        icd9_code
    FROM standardized.inpatient_claims,
    LATERAL (
        VALUES
		    ('0', admtng_icd9_dgns_cd),
            ('1', icd9_dgns_cd_1),
            ('2', icd9_dgns_cd_2),
            ('3', icd9_dgns_cd_3),
            ('4', icd9_dgns_cd_4),
            ('5', icd9_dgns_cd_5),
            ('6', icd9_dgns_cd_6),
            ('7', icd9_dgns_cd_7),
            ('8', icd9_dgns_cd_8),
			('9', icd9_dgns_cd_9),
			('10', icd9_dgns_cd_10)
    ) AS t(code_line, icd9_code)
    WHERE icd9_code IS NOT NULL
),
outpatient_diagnosis_codes AS(
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
        icd9_code
    FROM standardized.outpatient_claims,
    LATERAL (
        VALUES
		    ('0', admtng_icd9_dgns_cd),
            ('1', icd9_dgns_cd_1),
            ('2', icd9_dgns_cd_2),
            ('3', icd9_dgns_cd_3),
            ('4', icd9_dgns_cd_4),
            ('5', icd9_dgns_cd_5),
            ('6', icd9_dgns_cd_6),
            ('7', icd9_dgns_cd_7),
            ('8', icd9_dgns_cd_8),
			('9', icd9_dgns_cd_9),
			('10', icd9_dgns_cd_10)
    ) AS t(code_line, icd9_code)
    WHERE icd9_code IS NOT NULL
)
SELECT * FROM(
SELECT * FROM carrier_diagnosis_codes
UNION ALL
SELECT * FROM inpatient_diagnosis_codes
UNION ALL
SELECT * FROM outpatient_diagnosis_codes)
;




---------------------------------------------
--PROCEDURE VIEW-------------------------------
------------------------------------------------
DROP VIEW IF EXISTS standardized.Procedures;
CREATE VIEW standardized.Procedures AS
WITH carrier_procedure_codes AS (
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
		'HCPCS' AS code_type,
        code
    FROM standardized.carrier_claims,
    LATERAL (
        VALUES
            ('1', hcpcs_cd_1),
            ('2', hcpcs_cd_2),
            ('3', hcpcs_cd_3),
            ('4', hcpcs_cd_4),
            ('5', hcpcs_cd_5),
            ('6', hcpcs_cd_6),
            ('7', hcpcs_cd_7),
            ('8', hcpcs_cd_8),
            ('9', hcpcs_cd_9),
            ('10', hcpcs_cd_10),
            ('11', hcpcs_cd_11),
            ('12', hcpcs_cd_12),
            ('13', hcpcs_cd_13)			
    ) AS t(code_line, code)
    WHERE code IS NOT NULL
),
inpatient_procedure_codes AS(
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
		'ICD9' AS code_type,
        code
    FROM standardized.inpatient_claims,
    LATERAL (
        VALUES
            ('1', icd9_prcdr_cd_1),
            ('2', icd9_prcdr_cd_2),
            ('3', icd9_prcdr_cd_3),
            ('4', icd9_prcdr_cd_4),
            ('5', icd9_prcdr_cd_5),
            ('6', icd9_prcdr_cd_6)
    ) AS t(code_line, code)
    WHERE code IS NOT NULL
),
inpatient_hcpcs_codes AS(
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
		'HCPCS' AS code_type,
        code
    FROM standardized.inpatient_claims,
    LATERAL (
        VALUES
            ('1', hcpcs_cd_1),
            ('2', hcpcs_cd_2),
            ('3', hcpcs_cd_3),
            ('4', hcpcs_cd_4),
            ('5', hcpcs_cd_5),
            ('6', hcpcs_cd_6),
            ('7', hcpcs_cd_7),
            ('8', hcpcs_cd_8),
            ('9', hcpcs_cd_9),
            ('10', hcpcs_cd_10),
            ('11', hcpcs_cd_11),
            ('12', hcpcs_cd_12),
            ('13', hcpcs_cd_13),
            ('14', hcpcs_cd_14),
            ('15', hcpcs_cd_15),
            ('16', hcpcs_cd_16),
            ('17', hcpcs_cd_17),
            ('18', hcpcs_cd_18),
            ('19', hcpcs_cd_19),
            ('20', hcpcs_cd_20),
            ('21', hcpcs_cd_21),
            ('22', hcpcs_cd_22),
            ('23', hcpcs_cd_23),
            ('24', hcpcs_cd_24),
            ('25', hcpcs_cd_25),
            ('26', hcpcs_cd_26),
            ('27', hcpcs_cd_27),
            ('28', hcpcs_cd_28),
            ('29', hcpcs_cd_29),
            ('30', hcpcs_cd_30),
            ('31', hcpcs_cd_31),
            ('32', hcpcs_cd_32),
            ('33', hcpcs_cd_33),
            ('34', hcpcs_cd_34),
            ('35', hcpcs_cd_35),
            ('36', hcpcs_cd_36),
            ('37', hcpcs_cd_37),
            ('38', hcpcs_cd_38),
            ('39', hcpcs_cd_39),
            ('40', hcpcs_cd_40),
            ('41', hcpcs_cd_41),
            ('42', hcpcs_cd_42),
            ('43', hcpcs_cd_43),
            ('44', hcpcs_cd_44),
            ('45', hcpcs_cd_45)
    ) AS t(code_line,code)
    WHERE code IS NOT NULL
),	
outpatient_procedure_codes AS(
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
		'ICD9' AS code_type,
        code
    FROM standardized.outpatient_claims,
    LATERAL (
        VALUES
            ('1', icd9_prcdr_cd_1),
            ('2', icd9_prcdr_cd_2),
            ('3', icd9_prcdr_cd_3),
            ('4', icd9_prcdr_cd_4),
            ('5', icd9_prcdr_cd_5),
            ('6', icd9_prcdr_cd_6)
    ) AS t(code_line, code)
    WHERE code IS NOT NULL
),
outpatient_hcpcs_codes AS(
    SELECT 
        desynpuf_id,
        clm_id,
        code_line,
		'HCPCS' AS code_type,
        code
    FROM standardized.outpatient_claims,
    LATERAL (
        VALUES
            ('1', hcpcs_cd_1),
            ('2', hcpcs_cd_2),
            ('3', hcpcs_cd_3),
            ('4', hcpcs_cd_4),
            ('5', hcpcs_cd_5),
            ('6', hcpcs_cd_6),
            ('7', hcpcs_cd_7),
            ('8', hcpcs_cd_8),
            ('9', hcpcs_cd_9),
            ('10', hcpcs_cd_10),
            ('11', hcpcs_cd_11),
            ('12', hcpcs_cd_12),
            ('13', hcpcs_cd_13),
            ('14', hcpcs_cd_14),
            ('15', hcpcs_cd_15),
            ('16', hcpcs_cd_16),
            ('17', hcpcs_cd_17),
            ('18', hcpcs_cd_18),
            ('19', hcpcs_cd_19),
            ('20', hcpcs_cd_20),
            ('21', hcpcs_cd_21),
            ('22', hcpcs_cd_22),
            ('23', hcpcs_cd_23),
            ('24', hcpcs_cd_24),
            ('25', hcpcs_cd_25),
            ('26', hcpcs_cd_26),
            ('27', hcpcs_cd_27),
            ('28', hcpcs_cd_28),
            ('29', hcpcs_cd_29),
            ('30', hcpcs_cd_30),
            ('31', hcpcs_cd_31),
            ('32', hcpcs_cd_32),
            ('33', hcpcs_cd_33),
            ('34', hcpcs_cd_34),
            ('35', hcpcs_cd_35),
            ('36', hcpcs_cd_36),
            ('37', hcpcs_cd_37),
            ('38', hcpcs_cd_38),
            ('39', hcpcs_cd_39),
            ('40', hcpcs_cd_40),
            ('41', hcpcs_cd_41),
            ('42', hcpcs_cd_42),
            ('43', hcpcs_cd_43),
            ('44', hcpcs_cd_44),
            ('45', hcpcs_cd_45)
    ) AS t(code_line,code)
    WHERE code IS NOT NULL
)
SELECT * FROM(
SELECT * FROM carrier_procedure_codes
UNION ALL
SELECT * FROM inpatient_procedure_codes
UNION ALL
SELECT * FROM outpatient_procedure_codes)
;
