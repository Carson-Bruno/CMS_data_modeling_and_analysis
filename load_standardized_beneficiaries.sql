TRUNCATE TABLE standardized.beneficiaries;
INSERT INTO standardized.beneficiaries
(
desynpuf_id,
bene_birth_dt,
bene_death_dt,
bene_sex_ident_cd,
bene_race_cd,
bene_esrd_ind,
sp_state_code,
bene_county_cd,
bene_hi_cvrage_tot_mons,
bene_smi_cvrage_tot_mons,
bene_hmo_cvrage_tot_mons,
plan_cvrg_mos_num,
sp_alzhdmta,
sp_chf,
sp_chrnkidn,
sp_cncr,
sp_copd,
sp_depressn,
sp_diabetes,
sp_ischmcht,
sp_osteoprs,
sp_ra_oa,
sp_strketia,
medreimb_ip,
benres_ip,
pp_pymt_ip,
medreimb_op,
benres_op,
pp_pymt_op,
medreimb_car,
benres_car,
pp_pymt_car
)
SELECT 
desynpuf_id,
bene_birth_dt,
bene_death_dt,
CASE WHEN bene_sex_ident_cd = '1'
	 THEN 'M'
	 WHEN bene_sex_ident_cd = '2'
	 THEN 'F'
	 ELSE NULL
	 END AS bene_sex_ident_cd,
bene_race_cd,
CASE WHEN bene_esrd_ind = 'Y'
	 THEN '1'
	 ELSE bene_esrd_ind
	 END AS bene_esrd_ind,
sp_state_code,
bene_county_cd,
bene_hi_cvrage_tot_mons,
bene_smi_cvrage_tot_mons,
bene_hmo_cvrage_tot_mons,
plan_cvrg_mos_num,
CASE 
    WHEN sp_alzhdmta = 2 THEN '0'
    WHEN sp_alzhdmta = 1 THEN sp_alzhdmta
    ELSE NULL
END AS sp_alzhdmta,

CASE 
    WHEN sp_chf = 2 THEN '0'
    WHEN sp_chf = 1 THEN sp_chf
    ELSE NULL
END AS sp_chf,

CASE 
    WHEN sp_chrnkidn = 2 THEN '0'
    WHEN sp_chrnkidn = 1 THEN sp_chrnkidn
    ELSE NULL
END AS sp_chrnkidn,

CASE 
    WHEN sp_cncr = 2 THEN '0'
    WHEN sp_cncr = 1 THEN sp_cncr
    ELSE NULL
END AS sp_cncr,

CASE 
    WHEN sp_copd = 2 THEN '0'
    WHEN sp_copd = 1 THEN sp_copd
    ELSE NULL
END AS sp_copd,

CASE 
    WHEN sp_depressn = 2 THEN '0'
    WHEN sp_depressn = 1 THEN sp_depressn
    ELSE NULL
END AS sp_depressn,

CASE 
    WHEN sp_diabetes = 2 THEN '0'
    WHEN sp_diabetes = 1 THEN sp_diabetes
    ELSE NULL
END AS sp_diabetes,

CASE 
    WHEN sp_ischmcht = 2 THEN '0'
    WHEN sp_ischmcht = 1 THEN sp_ischmcht
    ELSE NULL
END AS sp_ischmcht,

CASE 
    WHEN sp_osteoprs = 2 THEN '0'
    WHEN sp_osteoprs = 1 THEN sp_osteoprs
    ELSE NULL
END AS sp_osteoprs,

CASE 
    WHEN sp_ra_oa = 2 THEN '0'
    WHEN sp_ra_oa = 1 THEN sp_ra_oa
    ELSE NULL
END AS sp_ra_oa,

CASE 
    WHEN sp_strketia = 2 THEN '0'
    WHEN sp_strketia = 1 THEN sp_strketia
    ELSE NULL
END AS sp_strketia,

medreimb_ip,
benres_ip,
pp_pymt_ip,
medreimb_op,
benres_op,
pp_pymt_op,
medreimb_car,
benres_car,
pp_pymt_car

FROM raw.beneficiaries;


