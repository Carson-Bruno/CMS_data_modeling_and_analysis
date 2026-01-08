TRUNCATE TABLE standardized.outpatient_claims;
INSERT INTO standardized.outpatient_claims(
desynpuf_id,
clm_id,
segment,
clm_from_dt,
clm_thru_dt,
prvdr_num,
clm_pmt_amt,
nch_prmry_pyr_clm_pd_amt,
at_physn_npi,
op_physn_npi,
ot_physn_npi,
nch_bene_blood_ddctbl_lblty_am,
icd9_dgns_cd_1,
icd9_dgns_cd_2,
icd9_dgns_cd_3,
icd9_dgns_cd_4,
icd9_dgns_cd_5,
icd9_dgns_cd_6,
icd9_dgns_cd_7,
icd9_dgns_cd_8,
icd9_dgns_cd_9,
icd9_dgns_cd_10,
icd9_prcdr_cd_1,
icd9_prcdr_cd_2,
icd9_prcdr_cd_3,
icd9_prcdr_cd_4,
icd9_prcdr_cd_5,
icd9_prcdr_cd_6,
nch_bene_ip_ddctbl_amt,
nch_bene_pta_coinsrnc_am,
admtng_icd9_dgns_cd,
hcpcs_cd_1,
hcpcs_cd_2,
hcpcs_cd_3,
hcpcs_cd_4,
hcpcs_cd_5,
hcpcs_cd_6,
hcpcs_cd_7,
hcpcs_cd_8,
hcpcs_cd_9,
hcpcs_cd_10,
hcpcs_cd_11,
hcpcs_cd_12,
hcpcs_cd_13,
hcpcs_cd_14,
hcpcs_cd_15,
hcpcs_cd_16,
hcpcs_cd_17,
hcpcs_cd_18,
hcpcs_cd_19,
hcpcs_cd_20,
hcpcs_cd_21,
hcpcs_cd_22,
hcpcs_cd_23,
hcpcs_cd_24,
hcpcs_cd_25,
hcpcs_cd_26,
hcpcs_cd_27,
hcpcs_cd_28,
hcpcs_cd_29,
hcpcs_cd_30,
hcpcs_cd_31,
hcpcs_cd_32,
hcpcs_cd_33,
hcpcs_cd_34,
hcpcs_cd_35,
hcpcs_cd_36,
hcpcs_cd_37,
hcpcs_cd_38,
hcpcs_cd_39,
hcpcs_cd_40,
hcpcs_cd_41,
hcpcs_cd_42,
hcpcs_cd_43,
hcpcs_cd_44,
hcpcs_cd_45

)
SELECT 
desynpuf_id,
clm_id,
segment,
clm_from_dt,
clm_thru_dt,
prvdr_num,
clm_pmt_amt,
nch_prmry_pyr_clm_pd_amt,
at_physn_npi,
op_physn_npi,
ot_physn_npi,
nch_bene_blood_ddctbl_lblty_am,
	CASE WHEN (icd9_dgns_cd_1)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_1)
		 ELSE NULL
		 END AS icd9_dgns_cd_1,
	CASE WHEN (icd9_dgns_cd_2)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_2)
		 ELSE NULL
		 END AS icd9_dgns_cd_2,
	CASE WHEN (icd9_dgns_cd_3)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_3)
		 ELSE NULL
		 END AS icd9_dgns_cd_3,
	CASE WHEN (icd9_dgns_cd_4)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_4)
		 ELSE NULL
		 END AS icd9_dgns_cd_4,
	CASE WHEN (icd9_dgns_cd_5)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_5)
		 ELSE NULL
		 END AS icd9_dgns_cd_5,
	CASE WHEN (icd9_dgns_cd_6)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_6)
		 ELSE NULL
		 END AS icd9_dgns_cd_6,
	CASE WHEN (icd9_dgns_cd_7)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_7)
		 ELSE NULL
		 END AS icd9_dgns_cd_7,
	CASE WHEN (icd9_dgns_cd_8)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_8)
		 ELSE NULL
		 END AS icd9_dgns_cd_8,
	CASE WHEN (icd9_dgns_cd_9)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_9)
		 ELSE NULL
		 END AS icd9_dgns_cd_9,
	CASE WHEN (icd9_dgns_cd_10)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_dgns_cd_10)
		 ELSE NULL
		 END AS icd9_dgns_cd_10,
	CASE WHEN (icd9_prcdr_cd_1)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_prcdr_cd_1)
		 ELSE NULL
		 END AS icd9_prcdr_cd_1,
	CASE WHEN (icd9_prcdr_cd_2)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_prcdr_cd_2)
		 ELSE NULL
		 END AS icd9_prcdr_cd_2,
	CASE WHEN (icd9_prcdr_cd_3)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_prcdr_cd_3)
		 ELSE NULL
		 END AS icd9_prcdr_cd_3,
	CASE WHEN (icd9_prcdr_cd_4)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_prcdr_cd_4)
		 ELSE NULL
		 END AS icd9_prcdr_cd_4,
	CASE WHEN (icd9_prcdr_cd_5)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_prcdr_cd_5)
		 ELSE NULL
		 END AS icd9_prcdr_cd_5,
	CASE WHEN (icd9_prcdr_cd_6)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(icd9_prcdr_cd_6)
		 ELSE NULL
		 END AS icd9_prcdr_cd_6,
nch_bene_ip_ddctbl_amt,
nch_bene_pta_coinsrnc_am,
	CASE WHEN (admtng_icd9_dgns_cd)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(admtng_icd9_dgns_cd)
		 ELSE NULL
		 END AS admtng_icd9_dgns_cd,
CASE 
    WHEN hcpcs_cd_1 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_1)
    ELSE NULL
END AS hcpcs_cd_1,

CASE 
    WHEN hcpcs_cd_2 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_2)
    ELSE NULL
END AS hcpcs_cd_2,

CASE 
    WHEN hcpcs_cd_3 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_3)
    ELSE NULL
END AS hcpcs_cd_3,

CASE 
    WHEN hcpcs_cd_4 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_4)
    ELSE NULL
END AS hcpcs_cd_4,

CASE 
    WHEN hcpcs_cd_5 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_5)
    ELSE NULL
END AS hcpcs_cd_5,

CASE 
    WHEN hcpcs_cd_6 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_6)
    ELSE NULL
END AS hcpcs_cd_6,

CASE 
    WHEN hcpcs_cd_7 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_7)
    ELSE NULL
END AS hcpcs_cd_7,

CASE 
    WHEN hcpcs_cd_8 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_8)
    ELSE NULL
END AS hcpcs_cd_8,

CASE 
    WHEN hcpcs_cd_9 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_9)
    ELSE NULL
END AS hcpcs_cd_9,

CASE 
    WHEN hcpcs_cd_10 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_10)
    ELSE NULL
END AS hcpcs_cd_10,

CASE 
    WHEN hcpcs_cd_11 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_11)
    ELSE NULL
END AS hcpcs_cd_11,

CASE 
    WHEN hcpcs_cd_12 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_12)
    ELSE NULL
END AS hcpcs_cd_12,

CASE 
    WHEN hcpcs_cd_13 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_13)
    ELSE NULL
END AS hcpcs_cd_13,

CASE 
    WHEN hcpcs_cd_14 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_14)
    ELSE NULL
END AS hcpcs_cd_14,

CASE 
    WHEN hcpcs_cd_15 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_15)
    ELSE NULL
END AS hcpcs_cd_15,

CASE 
    WHEN hcpcs_cd_16 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_16)
    ELSE NULL
END AS hcpcs_cd_16,

CASE 
    WHEN hcpcs_cd_17 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_17)
    ELSE NULL
END AS hcpcs_cd_17,

CASE 
    WHEN hcpcs_cd_18 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_18)
    ELSE NULL
END AS hcpcs_cd_18,

CASE 
    WHEN hcpcs_cd_19 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_19)
    ELSE NULL
END AS hcpcs_cd_19,

CASE 
    WHEN hcpcs_cd_20 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_20)
    ELSE NULL
END AS hcpcs_cd_20,

CASE 
    WHEN hcpcs_cd_21 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_21)
    ELSE NULL
END AS hcpcs_cd_21,

CASE 
    WHEN hcpcs_cd_22 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_22)
    ELSE NULL
END AS hcpcs_cd_22,

CASE 
    WHEN hcpcs_cd_23 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_23)
    ELSE NULL
END AS hcpcs_cd_23,

CASE 
    WHEN hcpcs_cd_24 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_24)
    ELSE NULL
END AS hcpcs_cd_24,

CASE 
    WHEN hcpcs_cd_25 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_25)
    ELSE NULL
END AS hcpcs_cd_25,

CASE 
    WHEN hcpcs_cd_26 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_26)
    ELSE NULL
END AS hcpcs_cd_26,

CASE 
    WHEN hcpcs_cd_27 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_27)
    ELSE NULL
END AS hcpcs_cd_27,

CASE 
    WHEN hcpcs_cd_28 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_28)
    ELSE NULL
END AS hcpcs_cd_28,

CASE 
    WHEN hcpcs_cd_29 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_29)
    ELSE NULL
END AS hcpcs_cd_29,

CASE 
    WHEN hcpcs_cd_30 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_30)
    ELSE NULL
END AS hcpcs_cd_30,

CASE 
    WHEN hcpcs_cd_31 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_31)
    ELSE NULL
END AS hcpcs_cd_31,

CASE 
    WHEN hcpcs_cd_32 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_32)
    ELSE NULL
END AS hcpcs_cd_32,

CASE 
    WHEN hcpcs_cd_33 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_33)
    ELSE NULL
END AS hcpcs_cd_33,

CASE 
    WHEN hcpcs_cd_34 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_34)
    ELSE NULL
END AS hcpcs_cd_34,

CASE 
    WHEN hcpcs_cd_35 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_35)
    ELSE NULL
END AS hcpcs_cd_35,

CASE 
    WHEN hcpcs_cd_36 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_36)
    ELSE NULL
END AS hcpcs_cd_36,

CASE 
    WHEN hcpcs_cd_37 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_37)
    ELSE NULL
END AS hcpcs_cd_37,

CASE 
    WHEN hcpcs_cd_38 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_38)
    ELSE NULL
END AS hcpcs_cd_38,

CASE 
    WHEN hcpcs_cd_39 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_39)
    ELSE NULL
END AS hcpcs_cd_39,

CASE 
    WHEN hcpcs_cd_40 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_40)
    ELSE NULL
END AS hcpcs_cd_40,

CASE 
    WHEN hcpcs_cd_41 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_41)
    ELSE NULL
END AS hcpcs_cd_41,

CASE 
    WHEN hcpcs_cd_42 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_42)
    ELSE NULL
END AS hcpcs_cd_42,

CASE 
    WHEN hcpcs_cd_43 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_43)
    ELSE NULL
END AS hcpcs_cd_43,

CASE 
    WHEN hcpcs_cd_44 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_44)
    ELSE NULL
END AS hcpcs_cd_44,

CASE 
    WHEN hcpcs_cd_45 ~ '^(?:[A-Za-z]\d{4}|\d{5}|\d{4}[FT])$'
        THEN UPPER(hcpcs_cd_45)
    ELSE NULL
END AS hcpcs_cd_45


FROM raw.outpatient_claims;