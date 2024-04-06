-- SQL model for syhdr_medicaid_person_2016.CSV
{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

SELECT
    PERSON_ID::UBIGINT,
    MCAID_BENE_ID::UBIGINT,
    PERSON_WGHT::NUMERIC,
    AGE_LOW::NUMERIC,
    AGE_HIGH::NUMERIC,
    SEX_IDENT_CD::VARCHAR,
    RACE_CD::VARCHAR,
    MCAID_SBMTTG_ST_CD::VARCHAR,
    STATE_CD::VARCHAR,
    COUNTY_FIPS_CD::VARCHAR,
    ZIP_CD::VARCHAR,
    RSN_ENRLMT_CD::VARCHAR,
    MDCD_ENRLMT_1::NUMERIC,
    MDCD_ENRLMT_2::VARCHAR,
    MDCD_ENRLMT_3::VARCHAR,
    MDCD_ENRLMT_4::VARCHAR,
    MDCD_ENRLMT_5::VARCHAR,
    MDCD_ENRLMT_6::VARCHAR,
    MDCD_ENRLMT_7::VARCHAR,
    MDCD_ENRLMT_8::VARCHAR,
    MDCD_ENRLMT_9::VARCHAR,
    MDCD_ENRLMT_10::VARCHAR,
    MDCD_ENRLMT_11::VARCHAR,
    MDCD_ENRLMT_12::NUMERIC,
    MDCD_MCO_ENRLMT_1::NUMERIC,
    MDCD_MCO_ENRLMT_2::VARCHAR,
    MDCD_MCO_ENRLMT_3::VARCHAR,
    MDCD_MCO_ENRLMT_4::VARCHAR,
    MDCD_MCO_ENRLMT_5::VARCHAR,
    MDCD_MCO_ENRLMT_6::VARCHAR,
    MDCD_MCO_ENRLMT_7::VARCHAR,
    MDCD_MCO_ENRLMT_8::VARCHAR,
    MDCD_MCO_ENRLMT_9::VARCHAR,
    MDCD_MCO_ENRLMT_10::VARCHAR,
    MDCD_MCO_ENRLMT_11::VARCHAR,
    MDCD_MCO_ENRLMT_12::NUMERIC,
    MDCD_CHIP_ENRLMT::NUMERIC,
    RSTRCTD_BNFTS_IND::VARCHAR,
    DUAL_ELGBL_1::NUMERIC,
    DUAL_ELGBL_2::VARCHAR,
    DUAL_ELGBL_3::VARCHAR,
    DUAL_ELGBL_4::VARCHAR,
    DUAL_ELGBL_5::VARCHAR,
    DUAL_ELGBL_6::VARCHAR,
    DUAL_ELGBL_7::VARCHAR,
    DUAL_ELGBL_8::VARCHAR,
    DUAL_ELGBL_9::VARCHAR,
    DUAL_ELGBL_10::VARCHAR,
    DUAL_ELGBL_11::VARCHAR,
    DUAL_ELGBL_12::NUMERIC
FROM read_csv('/Users/me/data/syh_dr/syhdr_medicaid_person_2016.CSV', header=True, null_padding=true)