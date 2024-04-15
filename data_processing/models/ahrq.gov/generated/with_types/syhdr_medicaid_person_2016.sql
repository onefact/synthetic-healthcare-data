-- SQL model for syhdr_medicaid_person_2016.CSV
{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

SELECT
    PERSON_ID::UBIGINT AS PERSON_ID,
    MCAID_BENE_ID::UBIGINT AS MCAID_BENE_ID,
    PERSON_WGHT::NUMERIC AS PERSON_WGHT,
    AGE_LOW::NUMERIC AS AGE_LOW,
    AGE_HIGH::NUMERIC AS AGE_HIGH,
    SEX_IDENT_CD::VARCHAR AS SEX_IDENT_CD,
    RACE_CD::VARCHAR AS RACE_CD,
    MCAID_SBMTTG_ST_CD::VARCHAR AS MCAID_SBMTTG_ST_CD,
    STATE_CD::VARCHAR AS STATE_CD,
    COUNTY_FIPS_CD::VARCHAR AS COUNTY_FIPS_CD,
    ZIP_CD::VARCHAR AS ZIP_CD,
    RSN_ENRLMT_CD::VARCHAR AS RSN_ENRLMT_CD,
    MDCD_ENRLMT_1::NUMERIC AS MDCD_ENRLMT_1,
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
    MDCD_ENRLMT_12::NUMERIC AS MDCD_ENRLMT_12,
    MDCD_MCO_ENRLMT_1::NUMERIC AS MDCD_MCO_ENRLMT_1,
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
    MDCD_MCO_ENRLMT_12::NUMERIC AS MDCD_MCO_ENRLMT_12,
    MDCD_CHIP_ENRLMT::NUMERIC AS MDCD_CHIP_ENRLMT,
    RSTRCTD_BNFTS_IND::VARCHAR,
    DUAL_ELGBL_1::NUMERIC AS DUAL_ELGBL_1,
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
    DUAL_ELGBL_12::NUMERIC AS DUAL_ELGBL_12
FROM read_csv('~/data/syh_dr/syhdr_medicaid_person_2016.CSV', header=True, null_padding=true)