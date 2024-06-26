import pandas as pd
import os
import requests

def model(dbt, session):
    # URL to the Excel file containing the Consumer Price Index data
    output_path = dbt.config.get('output_path')
    base_path = os.path.expanduser(output_path)
    excel_path = os.path.join(base_path, "r-cpi-u-rs-allitems.xlsx")
    # cpi_url = "https://www.bls.gov/cpi/research-series/r-cpi-u-rs-allitems.xlsx"
    # download and save to output path as r-cpi-u-rs-allitems.xlsx
    consumer_price_index_df = pd.read_excel(excel_path, skiprows=5, usecols=['YEAR', 'AVG'])
    return consumer_price_index_df