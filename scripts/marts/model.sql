

CREATE SCHEMA IF NOT EXISTS analytics; 
DROP TABLE IF EXISTS analytics.Clinical_events;
CREATE TABLE IF NOT EXISTS analytics.Clinical_events(
	desynpuf_id CHAR(16),
	clm_id CHAR(15),
    clm_from_dt DATE,
    clm_thru_dt DATE,
	claim_type VARCHAR(10),	
)

DROP TABLE IF EXISTS analytics.Diagnosis;
CREATE TABLE IF NOT EXISTS analytics.Diagnosis(
	desynpuf_id CHAR(16),
	clm_id CHAR(15),
	code VARCHAR(5),
	code_type VARCHAR(10),
	code_line SMALLINT,
	admitting CHAR(3)
)


DROP TABLE IF EXISTS analytics.Procedure;
CREATE TABLE IF NOT EXISTS analytics.Procedure(
	desynpuf_id CHAR(16),
	clm_id CHAR(15),
	code VARCHAR(5),
	code_type VARCHAR(10),
	code_line SMALLINT,
)


DROP TABLE IF EXISTS analytics.Patient;
CREATE TABLE IF NOT EXISTS analytics.Patient(
    desynpuf_id CHAR(16),
    bene_birth_dt DATE,
    bene_death_dt DATE,
    bene_sex_ident_cd CHAR(1),
    bene_race_cd SMALLINT,
    bene_esrd_ind CHAR(1),
    sp_state_code SMALLINT,
    bene_county_cd VARCHAR(3),
)
