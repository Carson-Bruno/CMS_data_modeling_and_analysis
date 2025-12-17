INSERT INTO staging.inpatient_claims(
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
clm_admsn_dt,
admtng_icd9_dgns_cd,
clm_pass_thru_per_diem_amt,
nch_bene_ip_ddctbl_amt,
nch_bene_pta_coinsrnc_lblty_am,
nch_bene_blood_ddctbl_lblty_am,
clm_utlztn_day_cnt,
nch_bene_dschrg_dt,
clm_drg_cd,
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
clm_admsn_dt,
	CASE WHEN (admtng_icd9_dgns_cd)~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
		 THEN UPPER(admtng_icd9_dgns_cd)
		 ELSE NULL
		 END AS admtng_icd9_dgns_cd,
clm_pass_thru_per_diem_amt,
nch_bene_ip_ddctbl_amt,
nch_bene_pta_coinsrnc_lblty_am,
nch_bene_blood_ddctbl_lblty_am,
clm_utlztn_day_cnt,
nch_bene_dschrg_dt,
clm_drg_cd,
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
FROM raw.inpatient_claims;

INSERT INTO staging.carrier_claims
(desynpuf_id,
clm_id,
clm_from_dt,
clm_thru_dt,
icd9_dgns_cd_1,
icd9_dgns_cd_2,
icd9_dgns_cd_3,
icd9_dgns_cd_4,
icd9_dgns_cd_5,
icd9_dgns_cd_6,
icd9_dgns_cd_7,
icd9_dgns_cd_8,
prf_physn_npi_1,
prf_physn_npi_2,
prf_physn_npi_3,
prf_physn_npi_4,
prf_physn_npi_5,
prf_physn_npi_6,
prf_physn_npi_7,
prf_physn_npi_8,
prf_physn_npi_9,
prf_physn_npi_10,
prf_physn_npi_11,
prf_physn_npi_12,
prf_physn_npi_13,
tax_num_1,
tax_num_2,
tax_num_3,
tax_num_4,
tax_num_5,
tax_num_6,
tax_num_7,
tax_num_8,
tax_num_9,
tax_num_10,
tax_num_11,
tax_num_12,
tax_num_13,
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
line_nch_pmt_amt_1,
line_nch_pmt_amt_2,
line_nch_pmt_amt_3,
line_nch_pmt_amt_4,
line_nch_pmt_amt_5,
line_nch_pmt_amt_6,
line_nch_pmt_amt_7,
line_nch_pmt_amt_8,
line_nch_pmt_amt_9,
line_nch_pmt_amt_10,
line_nch_pmt_amt_11,
line_nch_pmt_amt_12,
line_nch_pmt_amt_13,
line_bene_ptb_ddctbl_amt_1,
line_bene_ptb_ddctbl_amt_2,
line_bene_ptb_ddctbl_amt_3,
line_bene_ptb_ddctbl_amt_4,
line_bene_ptb_ddctbl_amt_5,
line_bene_ptb_ddctbl_amt_6,
line_bene_ptb_ddctbl_amt_7,
line_bene_ptb_ddctbl_amt_8,
line_bene_ptb_ddctbl_amt_9,
line_bene_ptb_ddctbl_amt_10,
line_bene_ptb_ddctbl_amt_11,
line_bene_ptb_ddctbl_amt_12,
line_bene_ptb_ddctbl_amt_13,
line_bene_prmry_pyr_pd_amt_1,
line_bene_prmry_pyr_pd_amt_2,
line_bene_prmry_pyr_pd_amt_3,
line_bene_prmry_pyr_pd_amt_4,
line_bene_prmry_pyr_pd_amt_5,
line_bene_prmry_pyr_pd_amt_6,
line_bene_prmry_pyr_pd_amt_7,
line_bene_prmry_pyr_pd_amt_8,
line_bene_prmry_pyr_pd_amt_9,
line_bene_prmry_pyr_pd_amt_10,
line_bene_prmry_pyr_pd_amt_11,
line_bene_prmry_pyr_pd_amt_12,
line_bene_prmry_pyr_pd_amt_13,
line_coinsrnc_amt_1,
line_coinsrnc_amt_2,
line_coinsrnc_amt_3,
line_coinsrnc_amt_4,
line_coinsrnc_amt_5,
line_coinsrnc_amt_6,
line_coinsrnc_amt_7,
line_coinsrnc_amt_8,
line_coinsrnc_amt_9,
line_coinsrnc_amt_10,
line_coinsrnc_amt_11,
line_coinsrnc_amt_12,
line_coinsrnc_amt_13,
line_alowd_chrg_amt_1,
line_alowd_chrg_amt_2,
line_alowd_chrg_amt_3,
line_alowd_chrg_amt_4,
line_alowd_chrg_amt_5,
line_alowd_chrg_amt_6,
line_alowd_chrg_amt_7,
line_alowd_chrg_amt_8,
line_alowd_chrg_amt_9,
line_alowd_chrg_amt_10,
line_alowd_chrg_amt_11,
line_alowd_chrg_amt_12,
line_alowd_chrg_amt_13,
line_prcsg_ind_cd_1,
line_prcsg_ind_cd_2,
line_prcsg_ind_cd_3,
line_prcsg_ind_cd_4,
line_prcsg_ind_cd_5,
line_prcsg_ind_cd_6,
line_prcsg_ind_cd_7,
line_prcsg_ind_cd_8,
line_prcsg_ind_cd_9,
line_prcsg_ind_cd_10,
line_prcsg_ind_cd_11,
line_prcsg_ind_cd_12,
line_prcsg_ind_cd_13,
line_icd9_dgns_cd_1,
line_icd9_dgns_cd_2,
line_icd9_dgns_cd_3,
line_icd9_dgns_cd_4,
line_icd9_dgns_cd_5,
line_icd9_dgns_cd_6,
line_icd9_dgns_cd_7,
line_icd9_dgns_cd_8,
line_icd9_dgns_cd_9,
line_icd9_dgns_cd_10,
line_icd9_dgns_cd_11,
line_icd9_dgns_cd_12,
line_icd9_dgns_cd_13
)
SELECT 
desynpuf_id,
clm_id,
clm_from_dt,
clm_thru_dt,
CASE 
  WHEN icd9_dgns_cd_1 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_1)
  ELSE NULL
END AS icd9_dgns_cd_1,

CASE 
  WHEN icd9_dgns_cd_2 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_2)
  ELSE NULL
END AS icd9_dgns_cd_2,

CASE 
  WHEN icd9_dgns_cd_3 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_3)
  ELSE NULL
END AS icd9_dgns_cd_3,

CASE 
  WHEN icd9_dgns_cd_4 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_4)
  ELSE NULL
END AS icd9_dgns_cd_4,

CASE 
  WHEN icd9_dgns_cd_5 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_5)
  ELSE NULL
END AS icd9_dgns_cd_5,

CASE 
  WHEN icd9_dgns_cd_6 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_6)
  ELSE NULL
END AS icd9_dgns_cd_6,

CASE 
  WHEN icd9_dgns_cd_7 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_7)
  ELSE NULL
END AS icd9_dgns_cd_7,

CASE 
  WHEN icd9_dgns_cd_8 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(icd9_dgns_cd_8)
  ELSE NULL
END AS icd9_dgns_cd_8,

prf_physn_npi_1,
prf_physn_npi_2,
prf_physn_npi_3,
prf_physn_npi_4,
prf_physn_npi_5,
prf_physn_npi_6,
prf_physn_npi_7,
prf_physn_npi_8,
prf_physn_npi_9,
prf_physn_npi_10,
prf_physn_npi_11,
prf_physn_npi_12,
prf_physn_npi_13,
tax_num_1,
tax_num_2,
tax_num_3,
tax_num_4,
tax_num_5,
tax_num_6,
tax_num_7,
tax_num_8,
tax_num_9,
tax_num_10,
tax_num_11,
tax_num_12,
tax_num_13,
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
line_nch_pmt_amt_1,
line_nch_pmt_amt_2,
line_nch_pmt_amt_3,
line_nch_pmt_amt_4,
line_nch_pmt_amt_5,
line_nch_pmt_amt_6,
line_nch_pmt_amt_7,
line_nch_pmt_amt_8,
line_nch_pmt_amt_9,
line_nch_pmt_amt_10,
line_nch_pmt_amt_11,
line_nch_pmt_amt_12,
line_nch_pmt_amt_13,
line_bene_ptb_ddctbl_amt_1,
line_bene_ptb_ddctbl_amt_2,
line_bene_ptb_ddctbl_amt_3,
line_bene_ptb_ddctbl_amt_4,
line_bene_ptb_ddctbl_amt_5,
line_bene_ptb_ddctbl_amt_6,
line_bene_ptb_ddctbl_amt_7,
line_bene_ptb_ddctbl_amt_8,
line_bene_ptb_ddctbl_amt_9,
line_bene_ptb_ddctbl_amt_10,
line_bene_ptb_ddctbl_amt_11,
line_bene_ptb_ddctbl_amt_12,
line_bene_ptb_ddctbl_amt_13,
line_bene_prmry_pyr_pd_amt_1,
line_bene_prmry_pyr_pd_amt_2,
line_bene_prmry_pyr_pd_amt_3,
line_bene_prmry_pyr_pd_amt_4,
line_bene_prmry_pyr_pd_amt_5,
line_bene_prmry_pyr_pd_amt_6,
line_bene_prmry_pyr_pd_amt_7,
line_bene_prmry_pyr_pd_amt_8,
line_bene_prmry_pyr_pd_amt_9,
line_bene_prmry_pyr_pd_amt_10,
line_bene_prmry_pyr_pd_amt_11,
line_bene_prmry_pyr_pd_amt_12,
line_bene_prmry_pyr_pd_amt_13,
line_coinsrnc_amt_1,
line_coinsrnc_amt_2,
line_coinsrnc_amt_3,
line_coinsrnc_amt_4,
line_coinsrnc_amt_5,
line_coinsrnc_amt_6,
line_coinsrnc_amt_7,
line_coinsrnc_amt_8,
line_coinsrnc_amt_9,
line_coinsrnc_amt_10,
line_coinsrnc_amt_11,
line_coinsrnc_amt_12,
line_coinsrnc_amt_13,
line_alowd_chrg_amt_1,
line_alowd_chrg_amt_2,
line_alowd_chrg_amt_3,
line_alowd_chrg_amt_4,
line_alowd_chrg_amt_5,
line_alowd_chrg_amt_6,
line_alowd_chrg_amt_7,
line_alowd_chrg_amt_8,
line_alowd_chrg_amt_9,
line_alowd_chrg_amt_10,
line_alowd_chrg_amt_11,
line_alowd_chrg_amt_12,
line_alowd_chrg_amt_13,
CASE 
    WHEN line_prcsg_ind_cd_1 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_1
    WHEN line_prcsg_ind_cd_1 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_1)
END AS line_prcsg_ind_cd_1,

CASE 
    WHEN line_prcsg_ind_cd_2 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_2
    WHEN line_prcsg_ind_cd_2 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_2)
END AS line_prcsg_ind_cd_2,

CASE 
    WHEN line_prcsg_ind_cd_3 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_3
    WHEN line_prcsg_ind_cd_3 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_3)
END AS line_prcsg_ind_cd_3,

CASE 
    WHEN line_prcsg_ind_cd_4 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_4
    WHEN line_prcsg_ind_cd_4 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_4)
END AS line_prcsg_ind_cd_4,

CASE 
    WHEN line_prcsg_ind_cd_5 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_5
    WHEN line_prcsg_ind_cd_5 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_5)
END AS line_prcsg_ind_cd_5,

CASE 
    WHEN line_prcsg_ind_cd_6 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_6
    WHEN line_prcsg_ind_cd_6 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_6)
END AS line_prcsg_ind_cd_6,

CASE 
    WHEN line_prcsg_ind_cd_7 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_7
    WHEN line_prcsg_ind_cd_7 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_7)
END AS line_prcsg_ind_cd_7,

CASE 
    WHEN line_prcsg_ind_cd_8 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_8
    WHEN line_prcsg_ind_cd_8 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_8)
END AS line_prcsg_ind_cd_8,

CASE 
    WHEN line_prcsg_ind_cd_9 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_9
    WHEN line_prcsg_ind_cd_9 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_9)
END AS line_prcsg_ind_cd_9,

CASE 
    WHEN line_prcsg_ind_cd_10 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_10
    WHEN line_prcsg_ind_cd_10 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_10)
END AS line_prcsg_ind_cd_10,

CASE 
    WHEN line_prcsg_ind_cd_11 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_11
    WHEN line_prcsg_ind_cd_11 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_11)
END AS line_prcsg_ind_cd_11,

CASE 
    WHEN line_prcsg_ind_cd_12 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_12
    WHEN line_prcsg_ind_cd_12 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_12)
END AS line_prcsg_ind_cd_12,

CASE 
    WHEN line_prcsg_ind_cd_13 ~ '^\d$'
        THEN '0' || line_prcsg_ind_cd_13
    WHEN line_prcsg_ind_cd_13 !~ '^[A-D]|[G-V]|[X-Z]|00|1[2-8]|!|@|#|\$|\*|\(|\)|\+|<|>|%|&$'
        THEN NULL
    ELSE 
        UPPER(line_prcsg_ind_cd_13)
END AS line_prcsg_ind_cd_13,


CASE 
  WHEN line_icd9_dgns_cd_1 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_1)
  ELSE NULL
END AS line_icd9_dgns_cd_1,

CASE 
  WHEN line_icd9_dgns_cd_2 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_2)
  ELSE NULL
END AS line_icd9_dgns_cd_2,

CASE 
  WHEN line_icd9_dgns_cd_3 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_3)
  ELSE NULL
END AS line_icd9_dgns_cd_3,

CASE 
  WHEN line_icd9_dgns_cd_4 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_4)
  ELSE NULL
END AS line_icd9_dgns_cd_4,

CASE 
  WHEN line_icd9_dgns_cd_5 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_5)
  ELSE NULL
END AS line_icd9_dgns_cd_5,

CASE 
  WHEN line_icd9_dgns_cd_6 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_6)
  ELSE NULL
END AS line_icd9_dgns_cd_6,

CASE 
  WHEN line_icd9_dgns_cd_7 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_7)
  ELSE NULL
END AS line_icd9_dgns_cd_7,

CASE 
  WHEN line_icd9_dgns_cd_8 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_8)
  ELSE NULL
END AS line_icd9_dgns_cd_8,

CASE 
  WHEN line_icd9_dgns_cd_9 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_9)
  ELSE NULL
END AS line_icd9_dgns_cd_9,

CASE 
  WHEN line_icd9_dgns_cd_10 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_10)
  ELSE NULL
END AS line_icd9_dgns_cd_10,

CASE 
  WHEN line_icd9_dgns_cd_11 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_11)
  ELSE NULL
END AS line_icd9_dgns_cd_11,

CASE 
  WHEN line_icd9_dgns_cd_12 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_12)
  ELSE NULL
END AS line_icd9_dgns_cd_12,

CASE 
  WHEN line_icd9_dgns_cd_13 ~* '^(V\d{2}|\d{3}|E\d{3})(\d{1,2})?$'
    THEN UPPER(line_icd9_dgns_cd_13)
  ELSE NULL
END AS line_icd9_dgns_cd_13

FROM raw.carrier_claims;





