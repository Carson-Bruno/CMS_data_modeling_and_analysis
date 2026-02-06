# CMS data modeling and analysis
The Centers for Medicare & Medicaid Services synthetic public use files include beneficiaries from 2008-20010 and their associated claims files. The purpose of this project is to utilize these files to create a simple and cleaned data model that allows a more streamlined investigation of patients clinical events and associated outcomes.

## Data:
- [CMS DE-SynPUF](https://www.cms.gov/data-research/statistics-trends-and-reports/medicare-claims-synthetic-public-use-files/cms-2008-2010-data-entrepreneurs-synthetic-public-use-file-de-synpuf/de10-sample-1) 
- Beneficiary Summary: Demographic information of Beneficiaries
- Carrier Claims
- Inpatient Claims
- Outpatient Claims

## Possible Questions/problems to investigate
- Chronic kidney disease comorbidities and outcomes: Mortality/hospitalization rates based on the number of comorbidities.
- Outcomes of Angioplasty vs cornary artery bypass procedures

## Data Model
For the purposes of this project, this data model focuses on containing clean data without any extra fields that will slow down queries. This analysis will not focus on financial aspects of clinical events and thus any data containing this will not be included. The following is the data model that is currently being utilized, this is a work in progress that may be changed to fit analytical needs. 
<img src="https://github.com/Carson-Bruno/CMS_data_modeling_and_analysis/blob/main/rough_data_model.png" width="600" />


