* Citation: Mackenzie Gill, Shiyan Wang, and Courtney Cooper. 7/19/2024. [Data organization for Data Visualization Contest, (Version #1)]. USDA AMS Data Warehouse. //Warehouse URL: https://localfoodeconomics.com/data/access-the-data/

***STATA .do File***

//specific dropbox folder source: https://www.dropbox.com/scl/fo/zpxmg4ka2j7iol1bxrtsn/AO96kkZEZxNww3kFw4HVvVM/data_final?dl=0&preview=df_localfoodsales.csv&rlkey=172aq18oknqbct2d5rjm9n1xl&subfolder_nav_tracking=1. 


//import delimited "/Users/mackenzie/Downloads/df_localfoodsales.csv", varnames(1) clear 
//from FAME datawarehouse, originally from NASS census 


destring value, replace

**NORTHWEST ROCKY MOUNTAIN REGION**
keep if state_name == "Colorado" | state_name == "Wyoming" | state_name == "Idaho" | state_name == "Washington" | state_name == "Montana" | state_name =="Oregon"

drop if county_name == "NA" //state level values

**generating variables by year**

**2023**

gen number_csa_2023 = value if variable_name == "number_csa" & year == 2023
gen number_farmersmarket_2023 = value if variable_name == "number_farmersmarket" & year == 2023
gen number_onfarmmarket_2023 = value if variable_name == "number_onfarmmarket" & year == 2023
gen location_agritourism_2023 = value if variable_name == "location_agritourism" & year == 2023
gen location_csa_2023 = value if variable_name == "location_csa" & year == 2023
gen location_farmersmarket_2023 = value if variable_name == "location_farmersmarket" & year == 2023
gen location_onfarmmarket_2023 = value if variable_name == "location_onfarmmarket" & year == 2023
gen agritourism_farms_2023 = value if variable_name == "agritourism_farms" & year == 2023
gen agritourism_farms_pct_2023 = value if variable_name == "agritourism_farms_pct" & year == 2023
gen agritourism_sales_2023 = value if variable_name == "agritourism_sales" & year == 2023
gen agritourism_sales_pct_2023 = value if variable_name == "agritourism_sales_pct" & year == 2023
gen all_farms_2023 = value if variable_name == "all_farms" & year == 2023
gen all_sales_2023 = value if variable_name == "all_sales" & year == 2023
gen d2c_farms_2023 = value if variable_name == "d2c_farms" & year == 2023
gen d2c_farms_pct_2023 = value if variable_name == "d2c_farms_pct" & year == 2023
gen d2c_sales_2023 = value if variable_name == "d2c_sales" & year == 2023
gen d2c_sales_pct_2023 = value if variable_name == "d2c_sales_pct" & year == 2023
gen intermediated_farms_2023 = value if variable_name == "intermediated_farms" & year == 2023
gen intermediated_farms_pct_2023 = value if variable_name == "intermediated_farms_pct" & year == 2023
gen intermediated_sales_2023 = value if variable_name == "intermediated_sales" & year == 2023
gen intermediated_sales_pct_2023 = value if variable_name == "intermediated_sales_pct" & year == 2023
gen local_sales_2023 = value if variable_name == "local_sales" & year == 2023
gen local_sales_pct_2023 = value if variable_name == "local_sales_pct" & year == 2023
gen valueadded_farms_2023 = value if variable_name == "valueadded_farms" & year == 2023
gen valueadded_farms_pct_2023 = value if variable_name == "valueadded_farms_pct" & year == 2023
gen valueadded_sales_2023 = value if variable_name == "valueadded_sales" & year == 2023
gen valueadded_sales_pct_2023 = value if variable_name == "valueadded_sales_pct" & year == 2023
gen total_acres_operated_2023 = value if variable_name == "total_acres_operated" & year == 2023
gen total_number_operations_2023 = value if variable_name == "total_number_operations" & year == 2023
gen native_hawaiian_opi_number_operations_2023 = value if variable_name == "native_hawaiian_opi_number_operations" & year == 2023
gen nahiopi_number_producers_2023 = value if variable_name == "native_hawaiian_opi_number_producers" & year == 2023
gen native_hawaiian_opi_acres_operated_2023 = value if variable_name == "native_hawaiian_opi_acres_operated" & year == 2023
gen hispanic_number_producers_2023 = value if variable_name == "hispanic_number_producers" & year == 2023
gen aian_number_producers_2023 = value if variable_name == "american_indian_alaska_native_number_producers" & year == 2023
gen black_aa_number_producers_2023 = value if variable_name == "black_african_american_number_producers" & year == 2023
gen white_number_producers_2023 = value if variable_name == "white_number_producers" & year == 2023
gen hispanic_number_operations_2023 = value if variable_name == "hispanic_number_operations" & year == 2023
gen hispanic_acres_operated_2023 = value if variable_name == "hispanic_acres_operated" & year == 2023
gen american_indian_alaska_native_number_operations_2023 = value if variable_name == "american_indian_alaska_native_number_operations" & year == 2023
gen black_african_american_number_operations_2023 = value if variable_name == "black_african_american_number_operations" & year == 2023
gen white_number_operations_2023 = value if variable_name == "white_number_operations" & year == 2023
gen american_indian_alaska_native_acres_operated_2023 = value if variable_name == "american_indian_alaska_native_acres_operated" & year == 2023
gen black_african_american_acres_operated_2023 = value if variable_name == "black_african_american_acres_operated" & year == 2023
gen white_acres_operated_2023 = value if variable_name == "white_acres_operated" & year == 2023
gen total_number_producers_2023 = value if variable_name == "total_number_producers" & year == 2023
gen asian_number_producers_2023 = value if variable_name == "asian_number_producers" & year == 2023
gen asian_number_operations_2023 = value if variable_name == "asian_number_operations" & year == 2023
gen asian_acres_operated_2023 = value if variable_name == "asian_acres_operated" & year == 2023
//gen native_hawaiian_opi_number_operations_pct_2023 = value if variable_name == "native_hawaiian_opi_number_operations_pct" & year == 2023
gen hi_prod_pct_2023 = value if variable_name == "native_hawaiian_opi_number_producers_pct" & year == 2023
//gen native_hawaiian_opi_acres_operated_pct_2023 = value if variable_name == "native_hawaiian_opi_acres_operated_pct" & year == 2023
gen hispanic_prod_pct_2023 = value if variable_name == "hispanic_number_producers_pct" & year == 2023
gen ai_an_number_prods_pct_2023 = value if variable_name == "american_indian_alaska_native_number_producers_pct" & year == 2023
gen black_producers_pct_2023 = value if variable_name == "black_african_american_number_producers_pct" & year == 2023
gen whiteNumberProducersPct2023 = value if variable_name == "white_number_producers_pct" & year == 2023
gen hispanicops2023 = value if variable_name == "hispanic_number_operations_pct" & year == 2023
gen hispanic_acres_operated_pct_2023 = value if variable_name == "hispanic_acres_operated_pct" & year == 2023
//gen american_indian_alaska_native_number_operations_pct_2023 = value if variable_name == "american_indian_alaska_native_number_operations_pct" & year == 2023
//gen black_african_american_number_operations_pct_2023 = value if variable_name == "black_african_american_number_operations_pct" & year == 2023
//gen white_number_operations_pct_2023 = value if variable_name == "white_number_operations_pct" & year == 2023
//gen american_indian_alaska_native_acres_operated_pct_2023 = value if variable_name == "american_indian_alaska_native_acres_operated_pct" & year == 2023
//gen black_african_american_acres_operated_pct_2023 = value if variable_name == "black_african_american_acres_operated_pct" & year == 2023
gen white_acres_operated_pct_2023 = value if variable_name == "white_acres_operated_pct" & year == 2023
gen asian_number_producers_pct_2023 = value if variable_name == "asian_number_producers_pct" & year == 2023
gen asian_number_operations_pct_2023 = value if variable_name == "asian_number_operations_pct" & year == 2023
gen asian_acres_operated_pct_2023 = value if variable_name == "asian_acres_operated_pct"



**2022**

gen number_csa_2022 = value if variable_name == "number_csa" & year == 2022
gen number_farmersmarket_2022 = value if variable_name == "number_farmersmarket" & year == 2022
gen number_onfarmmarket_2022 = value if variable_name == "number_onfarmmarket" & year == 2022
gen location_agritourism_2022 = value if variable_name == "location_agritourism" & year == 2022
gen location_csa_2022 = value if variable_name == "location_csa" & year == 2022
gen location_farmersmarket_2022 = value if variable_name == "location_farmersmarket" & year == 2022
gen location_onfarmmarket_2022 = value if variable_name == "location_onfarmmarket" & year == 2022
gen agritourism_farms_2022 = value if variable_name == "agritourism_farms" & year == 2022
gen agritourism_farms_pct_2022 = value if variable_name == "agritourism_farms_pct" & year == 2022
gen agritourism_sales_2022 = value if variable_name == "agritourism_sales" & year == 2022
gen agritourism_sales_pct_2022 = value if variable_name == "agritourism_sales_pct" & year == 2022
gen all_farms_2022 = value if variable_name == "all_farms" & year == 2022
gen all_sales_2022 = value if variable_name == "all_sales" & year == 2022
gen d2c_farms_2022 = value if variable_name == "d2c_farms" & year == 2022
gen d2c_farms_pct_2022 = value if variable_name == "d2c_farms_pct" & year == 2022
gen d2c_sales_2022 = value if variable_name == "d2c_sales" & year == 2022
gen d2c_sales_pct_2022 = value if variable_name == "d2c_sales_pct" & year == 2022
gen intermediated_farms_2022 = value if variable_name == "intermediated_farms" & year == 2022
gen intermediated_farms_pct_2022 = value if variable_name == "intermediated_farms_pct" & year == 2022
gen intermediated_sales_2022 = value if variable_name == "intermediated_sales" & year == 2022
gen intermediated_sales_pct_2022 = value if variable_name == "intermediated_sales_pct" & year == 2022
gen local_sales_2022 = value if variable_name == "local_sales" & year == 2022
gen local_sales_pct_2022 = value if variable_name == "local_sales_pct" & year == 2022
gen valueadded_farms_2022 = value if variable_name == "valueadded_farms" & year == 2022
gen valueadded_farms_pct_2022 = value if variable_name == "valueadded_farms_pct" & year == 2022
gen valueadded_sales_2022 = value if variable_name == "valueadded_sales" & year == 2022
gen valueadded_sales_pct_2022 = value if variable_name == "valueadded_sales_pct" & year == 2022
gen total_acres_operated_2022 = value if variable_name == "total_acres_operated" & year == 2022
gen total_number_operations_2022 = value if variable_name == "total_number_operations" & year == 2022
//gen native_hawaiian_opi_number_operations_2022 = value if variable_name == "native_hawaiian_opi_number_operations" & year == 2022
gen nahiopi_number_producers_2022 = value if variable_name == "native_hawaiian_opi_number_producers" & year == 2022
//gen native_hawaiian_opi_acres_operated_2022 = value if variable_name == "native_hawaiian_opi_acres_operated" & year == 2022
gen hispanic_number_producers_2022 = value if variable_name == "hispanic_number_producers" & year == 2022
gen aian_number_producers_2022 = value if variable_name == "american_indian_alaska_native_number_producers" & year == 2022
gen black_aa_number_producers_2022 = value if variable_name == "black_african_american_number_producers" & year == 2022
gen white_number_producers_2022 = value if variable_name == "white_number_producers" & year == 2022
gen hispanic_number_operations_2022 = value if variable_name == "hispanic_number_operations" & year == 2022
gen hispanic_acres_operated_2022 = value if variable_name == "hispanic_acres_operated" & year == 2022
//gen american_indian_alaska_native_number_operations_2022 = value if variable_name == "american_indian_alaska_native_number_operations" & year == 2022
//gen black_african_american_number_operations_2022 = value if variable_name == "black_african_american_number_operations" & year == 2022
gen white_number_operations_2022 = value if variable_name == "white_number_operations" & year == 2022
//gen american_indian_alaska_native_acres_operated_2022 = value if variable_name == "american_indian_alaska_native_acres_operated" & year == 2022
//gen black_african_american_acres_operated_2022 = value if variable_name == "black_african_american_acres_operated" & year == 2022
gen white_acres_operated_2022 = value if variable_name == "white_acres_operated" & year == 2022
gen total_number_producers_2022 = value if variable_name == "total_number_producers" & year == 2022
gen asian_number_producers_2022 = value if variable_name == "asian_number_producers" & year == 2022
gen asian_number_operations_2022 = value if variable_name == "asian_number_operations" & year == 2022
gen asian_acres_operated_2022 = value if variable_name == "asian_acres_operated" & year == 2022
//gen native_hawaiian_opi_number_operations_pct_2022 = value if variable_name == "native_hawaiian_opi_number_operations_pct" & year == 2022
gen hi_numb_prod_pct_2022 = value if variable_name == "native_hawaiian_opi_number_producers_pct" & year == 2022
//gen native_hawaiian_opi_acres_operated_pct_2022 = value if variable_name == "native_hawaiian_opi_acres_operated_pct" & year == 2022
gen hispanic_number_prods_pct_2022 = value if variable_name == "hispanic_number_producers_pct" & year == 2022
gen ai_an_number_prods_pct_2022 = value if variable_name == "american_indian_alaska_native_number_producers_pct" & year == 2022
gen black_number_prods_pct_2022 = value if variable_name == "black_african_american_number_producers_pct" & year == 2022
gen white_number_producers_pct_2022 = value if variable_name == "white_number_producers_pct" & year == 2022
//gen hispanic_number_operations_pct_2022 = value if variable_name == "hispanic_number_operations_pct" & year == 2022
gen hispanic_acres_operated_pct_2022 = value if variable_name == "hispanic_acres_operated_pct" & year == 2022
//gen american_indian_alaska_native_number_operations_pct_2022 = value if variable_name == "american_indian_alaska_native_number_operations_pct" & year == 2022
//gen black_african_american_number_operations_pct_2022 = value if variable_name == "black_african_american_number_operations_pct" & year == 2022
//gen white_number_operations_pct_2022 = value if variable_name == "white_number_operations_pct" & year == 2022
//gen american_indian_alaska_native_acres_operated_pct_2022 = value if variable_name == "american_indian_alaska_native_acres_operated_pct" & year == 2022
//gen black_african_american_acres_operated_pct_2022 = value if variable_name == "black_african_american_acres_operated_pct" & year == 2022
gen white_acres_operated_pct_2022 = value if variable_name == "white_acres_operated_pct" & year == 2022
gen asian_number_producers_pct_2022 = value if variable_name == "asian_number_producers_pct" & year == 2022
gen asian_number_operations_pct_2022 = value if variable_name == "asian_number_operations_pct" & year == 2022
gen asian_acres_operated_pct_2022 = value if variable_name == "asian_acres_operated_pct"

**2017**

gen number_csa_2017 = value if variable_name == "number_csa" & year == 2017
gen number_farmersmarket_2017 = value if variable_name == "number_farmersmarket" & year == 2017
gen number_onfarmmarket_2017 = value if variable_name == "number_onfarmmarket" & year == 2017
gen location_agritourism_2017 = value if variable_name == "location_agritourism" & year == 2017
gen location_csa_2017 = value if variable_name == "location_csa" & year == 2017
gen location_farmersmarket_2017 = value if variable_name == "location_farmersmarket" & year == 2017
gen location_onfarmmarket_2017 = value if variable_name == "location_onfarmmarket" & year == 2017
gen agritourism_farms_2017 = value if variable_name == "agritourism_farms" & year == 2017
gen agritourism_farms_pct_2017 = value if variable_name == "agritourism_farms_pct" & year == 2017
gen agritourism_sales_2017 = value if variable_name == "agritourism_sales" & year == 2017
gen agritourism_sales_pct_2017 = value if variable_name == "agritourism_sales_pct" & year == 2017
gen all_farms_2017 = value if variable_name == "all_farms" & year == 2017
gen all_sales_2017 = value if variable_name == "all_sales" & year == 2017
gen d2c_farms_2017 = value if variable_name == "d2c_farms" & year == 2017
gen d2c_farms_pct_2017 = value if variable_name == "d2c_farms_pct" & year == 2017
gen d2c_sales_2017 = value if variable_name == "d2c_sales" & year == 2017
gen d2c_sales_pct_2017 = value if variable_name == "d2c_sales_pct" & year == 2017
gen intermediated_farms_2017 = value if variable_name == "intermediated_farms" & year == 2017
gen intermediated_farms_pct_2017 = value if variable_name == "intermediated_farms_pct" & year == 2017
gen intermediated_sales_2017 = value if variable_name == "intermediated_sales" & year == 2017
gen intermediated_sales_pct_2017 = value if variable_name == "intermediated_sales_pct" & year == 2017
gen local_sales_2017 = value if variable_name == "local_sales" & year == 2017
gen local_sales_pct_2017 = value if variable_name == "local_sales_pct" & year == 2017
gen valueadded_farms_2017 = value if variable_name == "valueadded_farms" & year == 2017
gen valueadded_farms_pct_2017 = value if variable_name == "valueadded_farms_pct" & year == 2017
gen valueadded_sales_2017 = value if variable_name == "valueadded_sales" & year == 2017
gen valueadded_sales_pct_2017 = value if variable_name == "valueadded_sales_pct" & year == 2017
gen total_acres_operated_2017 = value if variable_name == "total_acres_operated" & year == 2017
gen total_number_operations_2017 = value if variable_name == "total_number_operations" & year == 2017
//gen native_hawaiian_opi_number_operations_2017 = value if variable_name == "native_hawaiian_opi_number_operations" & year == 2017
//gen native_hawaiian_opi_number_producers_2017 = value if variable_name == "native_hawaiian_opi_number_producers" & year == 2017
//gen native_hawaiian_opi_acres_operated_2017 = value if variable_name == "native_hawaiian_opi_acres_operated" & year == 2017
//gen hispanic_number_producers_2017 = value if variable_name == "hispanic_number_producers" & year == 2017
//gen american_indian_alaska_native_number_producers_2017 = value if variable_name == "american_indian_alaska_native_number_producers" & year == 2017
//gen black_african_american_number_producers_2017 = value if variable_name == "black_african_american_number_producers" & year == 2017
gen white_number_producers_2017 = value if variable_name == "white_number_producers" & year == 2017
gen hispanic_number_operations_2017 = value if variable_name == "hispanic_number_operations" & year == 2017
gen hispanic_acres_operated_2017 = value if variable_name == "hispanic_acres_operated" & year == 2017
//gen american_indian_alaska_native_number_operations_2017 = value if variable_name == "american_indian_alaska_native_number_operations" & year == 2017
//gen black_african_american_number_operations_2017 = value if variable_name == "black_african_american_number_operations" & year == 2017
//gen white_number_operations_2017 = value if variable_name == "white_number_operations" & year == 2017
//gen american_indian_alaska_native_acres_operated_2017 = value if variable_name == "american_indian_alaska_native_acres_operated" & year == 2017
//gen black_african_american_acres_operated_2017 = value if variable_name == "black_african_american_acres_operated" & year == 2017
gen white_acres_operated_2017 = value if variable_name == "white_acres_operated" & year == 2017
gen total_number_producers_2017 = value if variable_name == "total_number_producers" & year == 2017
gen asian_number_producers_2017 = value if variable_name == "asian_number_producers" & year == 2017
gen asian_number_operations_2017 = value if variable_name == "asian_number_operations" & year == 2017
gen asian_acres_operated_2017 = value if variable_name == "asian_acres_operated" & year == 2017
//gen native_hawaiian_opi_number_operations_pct_2017 = value if variable_name == "native_hawaiian_opi_number_operations_pct" & year == 2017
//gen nativehawaiianopi_numb_prod_pct_2017 = value if variable_name == "native_hawaiian_opi_number_producers_pct" & year == 2017
//gen native_hawaiian_opi_acres_operated_pct_2017 = value if variable_name == "native_hawaiian_opi_acres_operated_pct" & year == 2017
//gen hispanic_number_producers_pct_2017 = value if variable_name == "hispanic_number_producers_pct" & year == 2017
//gen american_indian_alaska_native_number_producers_pct_2017 = value if variable_name == "american_indian_alaska_native_number_producers_pct" & year == 2017
//gen black_african_american_number_producers_pct_2017 = value if variable_name == "black_african_american_number_producers_pct" & year == 2017
gen white_number_producers_pct_2017 = value if variable_name == "white_number_producers_pct" & year == 2017
//gen hispanic_number_operations_pct_2017 = value if variable_name == "hispanic_number_operations_pct" & year == 2017
gen hispanic_acres_operated_pct_2017 = value if variable_name == "hispanic_acres_operated_pct" & year == 2017
//gen american_indian_alaska_native_number_operations_pct_2017 = value if variable_name == "american_indian_alaska_native_number_operations_pct" & year == 2017
//gen black_african_american_number_operations_pct_2017 = value if variable_name == "black_african_american_number_operations_pct" & year == 2017
//gen white_number_operations_pct_2017 = value if variable_name == "white_number_operations_pct" & year == 2017
//gen american_indian_alaska_native_acres_operated_pct_2017 = value if variable_name == "american_indian_alaska_native_acres_operated_pct" & year == 2017
//gen black_african_american_acres_operated_pct_2017 = value if variable_name == "black_african_american_acres_operated_pct" & year == 2017
gen white_acres_operated_pct_2017 = value if variable_name == "white_acres_operated_pct" & year == 2017
gen asian_number_producers_pct_2017 = value if variable_name == "asian_number_producers_pct" & year == 2017
gen asian_number_operations_pct_2017 = value if variable_name == "asian_number_operations_pct" & year == 2017
gen asian_acres_operated_pct_2017 = value if variable_name == "asian_acres_operated_pct"

***BIPIC producers pct per county****
egen BIPOC_producers_pct_2023 = rowtotal(hi_prod_pct_2023 black_producers_pct_2023  asian_number_producers_pct_2023 ai_an_number_prods_pct_2023)

egen BIPOC_producers_pct_2022 = rowtotal(hi_numb_prod_pct_2022 black_number_prods_pct_2022  asian_number_producers_pct_2022 ai_an_number_prods_pct_2022)

**num BIPOC producers 
egen BIPOC_num_prods_2023 = rowtotal(nahiopi_number_producers_2023  aian_number_producers_2023 black_aa_number_producers_2023 asian_number_producers_2023) 

egen BIPOC_num_prods_2022 = rowtotal(nahiopi_number_producers_2022 aian_number_producers_2022 black_aa_number_producers_2022 asian_number_producers_2022 )

gen BIPOC_pct_2022 =  t_BIPOC_num_prods_2022 / t_total_number_producers_2022
gen BIPOC_pct_2022_ = BIPOC_pct_2022*100

**making local sales numeric
gen local_sales_2022_num = real(local_sales_2022)


*******************************
**DATA ORGANIZATION**
*************************************
//merging MPI count from tab fips_code table in MPI directory warehouse dataset (rename fips STCOUNTYFP)

merge m:1 STCOUNTYFP using "/Users/mackenzie/Desktop/fips_to_MPI_count.dta"
rename _merge _merge_MPI
//not matched from master: _merge_MPI == 1 (matched _merge_MPI==3)

//merging PCTLACCESS from 2020 food environment atlas
//source: https://www.ers.usda.gov/data-products/food-environment-atlas/data-access-and-documentation-downloads/ 

merge m:1 STCOUNTYFP using "/Users/mackenzie/Desktop/fips_to_laccess.dta" 
rename _merge _merge_LACCESS
//not matched from master: 729 _merge_LACCESS == 1 from using 2881 _merge_LACCESS==2

//merging foodhub counts from 2020 Food environment atlas
//source: https://www.ers.usda.gov/data-products/food-environment-atlas/data-access-and-documentation-downloads/ 

merge m:1 STCOUNTYFP using "/Users/mackenzie/Desktop/foodhub_count.dta"
rename _merge _merge_STCOUNTYFP
//not matched from master: 729 _merge_foodhub ==1 _merge_foodhub ==3 matched


** merging 2010 RUCA codes from USDA ERS dataset by matching state-county FIPS codes **
* source: https://www.ers.usda.gov/data-products/rural-urban-commuting-area-codes/
**************************************

merge m:1 STCOUNTYFP using "/Users/mackenzie/Desktop/FIPS_to_RUCA.dta"  
					//just 1 observation from master unmatched 
drop if _merge==2. //dropping unmatched observations from RUCA (using) dataset 

**Rural/Urban variable**

//Primary RUCA Codes, 2010	
//1    Metropolitan area core: primary flow within an urbanized area (UA)	
//2    Metropolitan area high commuting: primary flow 30% or more to a UA	
//3    Metropolitan area low commuting: primary flow 10% to 30% to a UA	
//4    Micropolitan area core: primary flow within an Urban Cluster of 10,000 to 49,999 (large UC)	
//5    Micropolitan high commuting: primary flow 30% or more to a large UC	
//6    Micropolitan low commuting: primary flow 10% to 30% to a large UC	
//7    Small town core: primary flow within an Urban Cluster of 2,500 to 9,999 (small UC)	
//8    Small town high commuting: primary flow 30% or more to a small UC	
//9    Small town low commuting: primary flow 10% to 30% to a small UC	
//10  Rural areas: primary flow to a tract outside a UA or UC	
//99  Not coded: Census tract has zero population and no rural-urban identifier information	


//The literature classifies a FIPS code as rural if the commuting flow is within an urban center of 10,000-49,000 or smaller (RUCA code of 4-10) source: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8428861/ .  

gen rural_RUCA = 0
replace rural_RUCA = 1 if RUCA == 4 
replace rural_RUCA = 1 if RUCA == 5 
replace rural_RUCA = 1 if RUCA == 6 
replace rural_RUCA = 1 if RUCA == 7 
replace rural_RUCA = 1 if RUCA == 8 
replace rural_RUCA = 1 if RUCA == 9 
replace rural_RUCA = 1 if RUCA == 10 


**reshaping data to wide**
by STCOUNTYFP, sort: egen t_number_onfarmmarket_2023 = total(number_onfarmmarket_2023)
by STCOUNTYFP, sort: egen t_number_farmersmarket_2023 = total(number_farmersmarket_2023)
by STCOUNTYFP, sort: egen t_number_csa_2023 = total(number_csa_2023)
by STCOUNTYFP, sort: egen t_local_sales_2023 = total(local_sales_2023)
by STCOUNTYFP, sort: egen t_d2c_farms_2023 = total(d2c_farms_2023)
by STCOUNTYFP, sort: egen t_agritourism_farms_2023 = total(agritourism_farms_2023)
by STCOUNTYFP, sort: egen t_BIPOC_num_prods_2022 = total(BIPOC_num_prods_2022) //no 2023 data
by STCOUNTYFP, sort: egen t_total_number_producers_2022 = total(total_number_producers_2022) //no 2023 data

***For 2022- lots of missing data for 2023
by STCOUNTYFP, sort: egen t_number_onfarmmarket_2022 = total(number_onfarmmarket_2022)
by STCOUNTYFP, sort: egen t_number_farmersmarket_2022 = total(number_farmersmarket_2022)
by STCOUNTYFP, sort: egen t_number_csa_2022 = total(number_csa_2022)
by STCOUNTYFP, sort: egen t_local_sales_2022_num = total(local_sales_2022_num)
by STCOUNTYFP, sort: egen t_d2c_farms_2022 = total(d2c_farms_2022)
by STCOUNTYFP, sort: egen t_agritourism_farms_2022 = total(agritourism_farms_2022)
by STCOUNTYFP, sort: egen t_BIPOC_num_prods_2022 = total(BIPOC_num_prods_2022)
by STCOUNTYFP, sort: egen t_total_number_producers_2022 = total(total_number_producers_2022)

**keeping a mixture of 2022 and 2023 seller data, depending on which data was missing in a given year
keep state_name county_name STCOUNTYFP t_agritourism_farms_2022 t_d2c_farms_2022 t_number_csa_2023 t_number_onfarmmarket_2023 t_number_farmersmarket_2023 t_local_sales_2022_num t_BIPOC_num_prods_2022 t_total_number_producers_2022  MPI_count PCT_LACCESS_POP10 FOODHUB_2018 hispanic_prod_pct_2023   hispanic_number_producers_2022  

**reshaping and dropping duplicate rows in order to have 1 row per county**
sort state_name county_name STCOUNTYFP t_agritourism_farms_2022 t_d2c_farms_2022 t_number_csa_2023 t_number_onfarmmarket_2023 t_number_farmersmarket_2023 t_local_sales_2022_num t_BIPOC_num_prods_2022 t_total_number_producers_2022  MPI_count PCT_LACCESS_POP10 FOODHUB_2018 hispanic_prod_pct_2023   hispanic_number_producers_2022  
quietly by state_name county_name STCOUNTYFP t_agritourism_farms_2022 t_d2c_farms_2022 t_number_csa_2023 t_number_onfarmmarket_2023 t_number_farmersmarket_2023 t_local_sales_2022_num t_BIPOC_num_prods_2022 t_total_number_producers_2022  MPI_count PCT_LACCESS_POP10 FOODHUB_2018 hispanic_prod_pct_2023    hispanic_number_producers_2022   : gen dup = cond(_N==1,0,_n)
drop if dup>0


**********************************************
** var for num local sellers**

egen num_local_sellers_2022_2023 = rowtotal(t_agritourism_farms_2022 t_d2c_farms_2022 t_number_csa_2023 t_number_onfarmmarket_2023 t_number_farmersmarket_2023  FOODHUB_2018  )

export excel using "/Users/mackenzie/Desktop/Data visualization contest/final_datavis_data_7_26.xls", sheetmodify firstrow(variables) 
