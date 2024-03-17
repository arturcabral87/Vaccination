USE vaccines;

#Create two new tables only with the countries

Create TABLE cases_country AS ( SELECT *
								FROM cases
                                WHERE GROUP_NAME = "COUNTRIES");
                                
Create TABLE covarage_country AS ( SELECT *
								FROM covarage
                                WHERE GROUP_NAME = "COUNTRIES");

# Create two tables, one with the diseases and one with the vacines
CREATE TABLE diseases (DISEASE VARCHAR(100) PRIMARY KEY,
						DISEASE_DESCRIPTION VARCHAR(100));
INSERT INTO diseases (DISEASE, DISEASE_DESCRIPTION)
					VALUES("CRS","Congenital rubella syndrome"),
							("DIPHTHERIA", "Diphtheria"),
                            ("INVASIVE_MENING","Invasive meningococcal disease"),
                            ("JAPENC","Japanese encephalitis"),
                            ("MEASLES","Measles"),
                            ("MUMPS","Mumps"),
                            ("NTETANUS", "Neonatal tetanus"),
                            ("PERTUSSIS", "Pertussis"),
                            ("POLIO", "Poliomyelitis"),
                            ("RUBELLA", "Rubella"),
                            ("TTETANUS", "Total tetanus"),
                            ("TYPHOID","Typhoid"),
                            ("YFEVER","Yellow fever");

CREATE TABLE vaccines_diseases (disease VARCHAR(100),
								vaccine VARCHAR(100));
  INSERT INTO vaccines_diseases (disease, vaccine)
					VALUES  ("CRS","RCV1"),
							("DIPHTHERIA", "DIPHCV4"),
                            ("DIPHTHERIA", "DIPHCV5"),
                            ("DIPHTHERIA", "DIPHCV6"),
                            ("DIPHTHERIA", "DTPCV1"),
                            ("DIPHTHERIA", "DTPCV3"),
                            ("INVASIVE_MENING","MEN_A_CONJ"),
                            ("INVASIVE_MENING","MEN_ACYW_CONJ"),
                            ("INVASIVE_MENING","MEN_B"), 
                            ("JAPENC","JAPENC"),
                            ("JAPENC","JAPENC_1"),
                            ("JAPENC","JAPENC_C"),
                            ("MEASLES","MCV1"),
                            ("MEASLES","MCV2"),
                            ("NTETANUS", "PAB"),
                            ("PERTUSSIS", "PERCV_PW"),
                            ("PERTUSSIS", "PERCV_PW"),
                            ("PERTUSSIS", "PERCV4"),
                            ("PERTUSSIS", "DTPCV1"),
                            ("PERTUSSIS", "DTPCV3"),
                            ("POLIO", "POL3"),
                            ("POLIO", "IPV1"),
                            ("POLIO", "IPV1_FRAC"),
                            ("POLIO", "IPV2"),
                            ("POLIO", "IPV2_FRAC"),
                            ("RUBELLA","RCV1"),
                            ("TTETANUS", "DTPCV1"),
                            ("TTETANUS", "DTPCV3"),
                            ("TTETANUS", "TT2PLUS"),
                            ("TTETANUS", "TTCV4"),
                            ("TTETANUS", "TTCV5"),
                            ("TTETANUS", "TTCV6"),
                            ("TYPHOID","TYPHOID"),
                            ("TYPHOID","TYPHOID_CONJ"),
                            ("YFEVER","YFV");                      
                            
CREATE TABLE vaccines_names (vaccine VARCHAR(100) PRIMARY KEY,
							 vaccine_description VARCHAR(100));
INSERT INTO vaccines_names (vaccine, vaccine_description)
					VALUES("DIPHCV4", "Diphtheria-containing vaccine, 4th dose (1st booster)"),
                    ("DIPHCV5", "Diphtheria-containing vaccine, 5th dose (2st booster)"),
                    ("DIPHCV6", "Diphtheria-containing vaccine, 6th dose (3st booster)"),
                    ("DTPCV1", "DTP-containing vaccine, 1st dose"),
                    ("DTPCV3", "DTP-containing vaccine, 3st dose"),
                    ("IPV1", "Inactivated polio-containing vaccine, 1st dose"),
                    ("IPV1_FRAC", "Fractional inactivated polio-containing vaccine, 1st dose"),
                    ("IPV2", "Inactivated polio-containing vaccine, 2nd dose"),
                    ("IPV2_FRAC", "Fractional inactivated polio-containing vaccine, 2nd dose"),
                    ("JAPENC", "Japanese encephalitis"),
                    ("JAPENC_1", "Japanese encephalitis vaccine, 1st dose"),
                    ("JAPENC_C", "Japanese encephalitis vaccine, last dose"),
                    ("MCV1", "Measles-containing vaccine, 1st dose"),
                    ("MCV2", "Measles-containing vaccine, 2nd dose"),
                    ("MEN_A_CONJ", "Meningococcal A conjugate vaccine"),
                    ("MEN_ACYW_CONJ", "Meningococcal ACYW conjugate vaccine"),
                    ("MEN_B", "Meningococcal B vaccine"),
                    ("PAB", "Protection at birth (PAB) against neonatal tetanus"),
                    ("PERCV_PW", "Pertussis-containing vaccine, pregnant women"),
                    ("PERCV4", "Pertussis-containing vaccine, 4th dose (1st booster)"),
                    ("POL3", "Polio, 3rd dose"),
                    ("RCV1", "Rubella-containing vaccine, 1st dose"),
                    ("TT2PLUS", "Tetanus toxoid-containing vaccine, 2nd and subsequent doses"),
                    ("TTCV4", "Tetanus-containing vaccine, 4th dose (1st booster)"),
                    ("TTCV5", "Tetanus-containing vaccine, 5th dose (2st booster)"),
                    ("TTCV6", "Tetanus-containing vaccine, 6th dose (3st booster)"),
                    ("TYPHOID", "Typhoid"),
                    ("TYPHOID_CONJ", "Typhoid conjugate vaccine"),
                    ("YFV", "Yellow fever vaccine");
                    
#Create a table with the countries and the respective WHO zone

CREATE TABLE countries_who (country VARCHAR(100) PRIMARY KEY,
							WHO_zone VARCHAR(100));
INSERT INTO countries_who (country, WHO_zone)
					VALUES('Algeria', 'African Region'),
						('Angola', 'African Region'),
						('Benin', 'African Region'),
						('Botswana', 'African Region'),
						('Burkina Faso', 'African Region'),
						('Burundi', 'African Region'),
						('Cabo Verde', 'African Region'),
						('Cameroon', 'African Region'),
						('Central African Republic', 'African Region'),
						('Chad', 'African Region'),
						('Comoros', 'African Region'),
						('Congo', 'African Region'),
						('Democratic Republic of the Congo', 'African Region'),
						('Cote d''Ivoire', 'African Region'),
						('Equatorial Guinea', 'African Region'),
						('Eritrea', 'African Region'),
						('Eswatini', 'African Region'),
						('Ethiopia', 'African Region'),
						('Gabon', 'African Region'),
						('Gambia', 'African Region'),
						('Ghana', 'African Region'),
						('Guinea', 'African Region'),
						('Guinea-Bissau', 'African Region'),
						('Kenya', 'African Region'),
						('Lesotho', 'African Region'),
						('Liberia', 'African Region'),
						('Madagascar', 'African Region'),
						('Malawi', 'African Region'),
						('Mali', 'African Region'),
						('Mauritania', 'African Region'),
						('Mauritius', 'African Region'),
						('Mozambique', 'African Region'),
						('Namibia', 'African Region'),
						('Niger', 'African Region'),
						('Nigeria', 'African Region'),
						('Rwanda', 'African Region'),
						('Sao Tome and Principe', 'African Region'),
						('Senegal', 'African Region'),
						('Seychelles', 'African Region'),
						('Sierra Leone', 'African Region'),
						('South Africa', 'African Region'),
						('South Sudan', 'African Region'),
						('United Republic of Tanzania', 'African Region'),
						('Togo', 'African Region'),
						('Uganda', 'African Region'),
						('Zambia', 'African Region'),
						('Zimbabwe', 'African Region'),
						('Antigua and Barbuda', 'Region of the Americas'),
						('Argentina', 'Region of the Americas'),
						('Bahamas', 'Region of the Americas'),
						('Barbados', 'Region of the Americas'),
						('Belize', 'Region of the Americas'),
						('Bolivia (Plurinational State of)', 'Region of the Americas'),
						('Brazil', 'Region of the Americas'),
						('Canada', 'Region of the Americas'),
						('Chile', 'Region of the Americas'),
						('Colombia', 'Region of the Americas'),
						('Costa Rica', 'Region of the Americas'),
						('Cuba', 'Region of the Americas'),
						('Dominica', 'Region of the Americas'),
						('Dominican Republic', 'Region of the Americas'),
						('Ecuador', 'Region of the Americas'),
						('El Salvador', 'Region of the Americas'),
						('Grenada', 'Region of the Americas'),
						('Guatemala', 'Region of the Americas'),
						('Guyana', 'Region of the Americas'),
						('Haiti', 'Region of the Americas'),
						('Honduras', 'Region of the Americas'),
						('Jamaica', 'Region of the Americas'),
						('Mexico', 'Region of the Americas'),
						('Nicaragua', 'Region of the Americas'),
						('Panama', 'Region of the Americas'),
						('Paraguay', 'Region of the Americas'),
						('Peru', 'Region of the Americas'),
						('Saint Kitts and Nevis', 'Region of the Americas'),
						('Saint Lucia', 'Region of the Americas'),
						('Saint Vincent and the Grenadines', 'Region of the Americas'),
						('Suriname', 'Region of the Americas'),
						('Trinidad and Tobago', 'Region of the Americas'),
						('United States of America', 'Region of the Americas'),
						('Uruguay', 'Region of the Americas'),
						('Venezuela (Bolivarian Republic of)', 'Region of the Americas'),
						('Bangladesh', 'South-East Asia Region'),
						('Bhutan', 'South-East Asia Region'),
						('Democratic People''s Republic of Korea', 'South-East Asia Region'),
						('India', 'South-East Asia Region'),
						('Indonesia', 'South-East Asia Region'),
						('Maldives', 'South-East Asia Region'),
						('Myanmar', 'South-East Asia Region'),
						('Nepal', 'South-East Asia Region'),
						('Sri Lanka', 'South-East Asia Region'),
						('Thailand', 'South-East Asia Region'),
						('Timor-Leste', 'South-East Asia Region'),
						('Albania', 'European Region'),
						('Andorra', 'European Region'),
						('Armenia', 'European Region'),
						('Austria', 'European Region'),
						('Azerbaijan', 'European Region'),
						('Belarus', 'European Region'),
						('Belgium', 'European Region'),
						('Bosnia and Herzegovina', 'European Region'),
						('Bulgaria', 'European Region'),
						('Croatia', 'European Region'),
						('Cyprus', 'European Region'),
						('Czechia', 'European Region'),
						('Denmark', 'European Region'),
						('Estonia', 'European Region'),
						('Finland', 'European Region'),
						('France', 'European Region'),
						('Georgia', 'European Region'),
						('Germany', 'European Region'),
						('Greece', 'European Region'),
						('Hungary', 'European Region'),
						('Iceland', 'European Region'),
						('Ireland', 'European Region'),
						('Israel', 'European Region'),
						('Italy', 'European Region'),
						('Kazakhstan', 'European Region'),
						('Kyrgyzstan', 'European Region'),
						('Latvia', 'European Region'),
						('Lithuania', 'European Region'),
						('Luxembourg', 'European Region'),
						('Malta', 'European Region'),
						('Monaco', 'European Region'),
						('Montenegro', 'European Region'),
						('Netherlands (Kingdom of the)', 'European Region'),
						('North Macedonia', 'European Region'),
						('Norway', 'European Region'),
						('Poland', 'European Region'),
						('Portugal', 'European Region'),
						('Republic of Moldova', 'European Region'),
						('Romania', 'European Region'),
						('Russian Federation', 'European Region'),
						('San Marino', 'European Region'),
						('Serbia', 'European Region'),
						('Slovakia', 'European Region'),
						('Slovenia', 'European Region'),
						('Spain', 'European Region'),
						('Sweden', 'European Region'),
						('Switzerland', 'European Region'),
						('Tajikistan', 'European Region'),
						('Türkiye', 'European Region'),
						('Turkmenistan', 'European Region'),
						('Ukraine', 'European Region'),
						('United Kingdom of Great Britain and Northern Ireland', 'European Region'),
						('Uzbekistan', 'European Region'),
						('Afghanistan', 'Eastern Mediterranean Region'),
						('Bahrain', 'Eastern Mediterranean Region'),
						('Djibouti', 'Eastern Mediterranean Region'),
						('Egypt', 'Eastern Mediterranean Region'),
						('Iran (Islamic Republic of)', 'Eastern Mediterranean Region'),
						('Iraq', 'Eastern Mediterranean Region'),
						('Jordan', 'Eastern Mediterranean Region'),
						('Kuwait', 'Eastern Mediterranean Region'),
						('Lebanon', 'Eastern Mediterranean Region'),
						('Libya', 'Eastern Mediterranean Region'),
						('Morocco', 'Eastern Mediterranean Region'),
						('Oman', 'Eastern Mediterranean Region'),
						('Pakistan', 'Eastern Mediterranean Region'),
						('Palestine', 'Eastern Mediterranean Region'),
						('Qatar', 'Eastern Mediterranean Region'),
						('Saudi Arabia', 'Eastern Mediterranean Region'),
						('Somalia', 'Eastern Mediterranean Region'),
						('Sudan', 'Eastern Mediterranean Region'),
						('Syrian Arab Republic', 'Eastern Mediterranean Region'),
						('Tunisia', 'Eastern Mediterranean Region'),
						('United Arab Emirates', 'Eastern Mediterranean Region'),
						('Yemen', 'Eastern Mediterranean Region'),
						('Australia', 'Western Pacific Region'),
						('Brunei Darussalam', 'Western Pacific Region'),
						('Cambodia', 'Western Pacific Region'),
						('China', 'Western Pacific Region'),
						('Cook Islands', 'Western Pacific Region'),
						('Fiji', 'Western Pacific Region'),
						('Japan', 'Western Pacific Region'),
						('Kiribati', 'Western Pacific Region'),
						('Lao People''s Democratic Republic', 'Western Pacific Region'),
						('Malaysia', 'Western Pacific Region'),
						('Marshall Islands', 'Western Pacific Region'),
						('Micronesia (Federated States of)', 'Western Pacific Region'),
						('Mongolia', 'Western Pacific Region'),
						('Nauru', 'Western Pacific Region'),
						('New Zealand', 'Western Pacific Region'),
						('Niue', 'Western Pacific Region'),
						('Palau', 'Western Pacific Region'),
						('Papua New Guinea', 'Western Pacific Region'),
						('Philippines', 'Western Pacific Region'),
						('Republic of Korea', 'Western Pacific Region'),
						('Samoa', 'Western Pacific Region'),
						('Singapore', 'Western Pacific Region'),
						('Solomon Islands', 'Western Pacific Region'),
						('Tonga', 'Western Pacific Region'),
						('Tuvalu', 'Western Pacific Region'),
						('Vanuatu', 'Western Pacific Region'),
						('Viet Nam', 'Western Pacific Region'),
                        ("American Samoa", "Western Pacific Region"),
                        ("Anguilla","Region of the Americas"),
                        ("Aruba","Region of the Americas"),
                        ("Bermuda", "Region of the Americas"),
                        ("British Virgin Islands", "Region of the Americas"),
                        ("Cayman Islands", "Region of the Americas"),
                        ("China, Hong Kong SAR", "Western Pacific Region"),
                        ("China, Macao SAR", "Western Pacific Region"),
                        ("Curaçao", "Region of the Americas"),
                        ("French Polynesia", "Western Pacific Region"),
                        ("Guam","Western Pacific Region"),
                        ("Kosovo", 'European Region'),
                        ("Montserrat", "Region of the Americas"),
                        ("New Caledonia","Western Pacific Region"),
                        ("Northern Mariana Islands","Western Pacific Region"),
                        ("Sint Maarten (Dutch part)", "Region of the Americas"),
                        ("Tokelau","Western Pacific Region"),
                        ("Turks and Caicos Islands", "Region of the Americas"),
                        ("Wallis and Futuna","Western Pacific Region");

#changing the names of this two contries on the three tables
UPDATE cases_country
SET COUNTRY = "Kosovo"
WHERE COUNTRY = "Kosovo (in accordance with UN Security Council resolution 1244 (1999))";
UPDATE cases_country
SET COUNTRY = "Palestine"
WHERE COUNTRY = "occupied Palestinian territory, including east Jerusalem";

UPDATE covarage_country
SET COUNTRYNAME = "Kosovo"
WHERE COUNTRYNAME = "Kosovo (in accordance with UN Security Council resolution 1244 (1999))";
UPDATE covarage_country
SET COUNTRYNAME = "Palestine"
WHERE COUNTRYNAME = "occupied Palestinian territory, including east Jerusalem";


# Change the names of some vaccines

UPDATE vaccine
SET DESCRIPTION = "Measles-containing vaccine, 2nd dose"
WHERE DESCRIPTION = "Measles-containing vaccine 2nd dose";

UPDATE vaccine
SET DESCRIPTION = "Inactivated polio-containing vaccine, 2nd dose"
WHERE DESCRIPTION = "IPV (Inactivated polio vaccine) 2nd dose";

UPDATE vaccine
SET DESCRIPTION = "Inactivated polio-containing vaccine, 1st dose"
WHERE DESCRIPTION = "IPV (Inactivated polio vaccine)";

UPDATE vaccine
SET DESCRIPTION = "Rubella-containing vaccine, 1st dose"
WHERE DESCRIPTION = "Rubella vaccine";

UPDATE vaccine
SET DESCRIPTION = "Yellow fever vaccine"
WHERE DESCRIPTION = "YF (Yellow fever) vaccine";

UPDATE vaccine
SET DESCRIPTION = "Meningococcal ACYW conjugate vaccine"
WHERE DESCRIPTION = "Meningococcal meningitis vaccines (all strains)";

# Correcting some outliers of covarage_contry

UPDATE covarage_country
SET TARGET_NUMBER = "814000"
WHERE COUNTRYNAME = "Yemen" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "814000000000000.0";

UPDATE covarage_country
SET TARGET_NUMBER = "57700"
WHERE COUNTRYNAME = "Kuwait" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "577000000000000.0";

UPDATE covarage_country
SET TARGET_NUMBER = "386000"
WHERE COUNTRYNAME = "Rwanda" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "386000000000000.0";

UPDATE covarage_country
SET TARGET_NUMBER = "178000"
WHERE COUNTRYNAME = "Jordan" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "178000000000000";

UPDATE covarage_country
SET TARGET_NUMBER = "164000"
WHERE COUNTRYNAME = "Congo" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "164000000000000";

UPDATE covarage_country
SET TARGET_NUMBER = "132000"
WHERE COUNTRYNAME = "Mauritania" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "132000000000000";

UPDATE covarage_country
SET TARGET_NUMBER = "476000"
WHERE COUNTRYNAME = "Senegal" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "476000000000";

UPDATE covarage_country
SET TARGET_NUMBER = "1306189"
WHERE COUNTRYNAME = "Kenya" AND YEAR = "2011" AND ANTIGEN = "POL3" AND TARGET_NUMBER = "1306189369";

UPDATE covarage_country
SET TARGET_NUMBER = "974000"
WHERE COUNTRYNAME = "Iraq" AND YEAR = "2005" AND ANTIGEN = "MCV2" AND TARGET_NUMBER = "9740000000000";

UPDATE covarage_country
SET TARGET_NUMBER = "816133"
WHERE COUNTRYNAME = "Somalia" AND YEAR = "2020" AND ANTIGEN = "TT2PLUS" AND TARGET_NUMBER = "81613254";


#Change the name to the the inicials only

UPDATE countries_who
SET WHO_zone = "EMR"
WHERE WHO_zone = "Eastern Mediterranean Region";
UPDATE countries_who
SET WHO_zone = "AFR"
WHERE WHO_zone = "African Region";
UPDATE countries_who
SET WHO_zone = "EUR"
WHERE WHO_zone = "European Region";
UPDATE countries_who
SET WHO_zone = "AMR"
WHERE WHO_zone = "Region of the Americas";
UPDATE countries_who
SET WHO_zone = "WPR"
WHERE WHO_zone = "Western Pacific Region";
UPDATE countries_who
SET WHO_zone = "SEAR"
WHERE WHO_zone = "South-East Asia Region";

UPDATE vaccine
SET WHO_REGION = "EMR"
WHERE WHO_REGION = "EMRO";
UPDATE vaccine
SET WHO_REGION = "AFR"
WHERE WHO_REGION = "AFRO";
UPDATE vaccine
SET WHO_REGION = "EUR"
WHERE WHO_REGION = "EURO";
UPDATE vaccine
SET WHO_REGION = "AMR"
WHERE WHO_REGION = "AMRO";
UPDATE vaccine
SET WHO_REGION = "WPR"
WHERE WHO_REGION = "WPRO";
UPDATE vaccine
SET WHO_REGION = "SEAR"
WHERE WHO_REGION = "SEARO";

#Checking if there's any difference between the tables
SELECT DISTINCT country
FROM cases_country
WHERE country NOT IN (SELECT COUNTRY FROM countries_who);

SELECT DISTINCT COUNTRYNAME
FROM vaccine
WHERE COUNTRYNAME NOT IN (SELECT COUNTRY FROM countries_who);

SELECT DISTINCT COUNTRYNAME
FROM covarage_country
WHERE COUNTRYNAME NOT IN (SELECT COUNTRY FROM countries_who);

#Creating the foreign keys for each table using the countries names from the countries_who as primary keys

ALTER TABLE cases_country
MODIFY COLUMN COUNTRY VARCHAR(100);
ALTER TABLE cases_country
ADD CONSTRAINT fk_cases
FOREIGN KEY (COUNTRY)
REFERENCES countries_who(COUNTRY);

ALTER TABLE covarage_country
MODIFY COLUMN COUNTRYNAME VARCHAR(100);
ALTER TABLE covarage_country
ADD CONSTRAINT fk_covarage
FOREIGN KEY (COUNTRYNAME)
REFERENCES countries_who(COUNTRY);

ALTER TABLE vaccine
MODIFY COLUMN COUNTRYNAME VARCHAR(100);
ALTER TABLE vaccine
ADD CONSTRAINT fk_vaccine
FOREIGN KEY (COUNTRYNAME)
REFERENCES countries_who(COUNTRY);

#Delete the HPV, Vitamin A, BCG, Influenza, Flu, HepB, Pneumococcal and Rotavirus references since the data is very incomplete
DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%HPV%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%HPV%";

DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%Vitamin%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%Vitamin%";

DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%BCG%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%BCG%";

DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%Influenza%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%Influenza%";

DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%Flu%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%Flu%";

DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%HepB%";
DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%Hepatitis%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%HepB%";

DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%Pneumococcal%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%Pneumococcal%";

DELETE FROM vaccine
WHERE DESCRIPTION LIKE "%Rotavirus%";
DELETE FROM covarage_country
WHERE ANTIGEN_DESCRIPTION LIKE "%Rotavirus%";
DELETE FROM covarage_country
WHERE ANTIGEN LIKE "%HIB3%";

DELETE FROM vaccine
WHERE DESCRIPTION = "aP (acellular pertussis) vaccine";
DELETE FROM vaccine
WHERE DESCRIPTION = "Mumps vaccine";
DELETE FROM vaccine
WHERE DESCRIPTION = "Varicella vaccine";
DELETE FROM vaccine
WHERE DESCRIPTION = 'Malaria vaccine';

# Since there's no vaccine data for mumps we're removing it also.
DELETE FROM cases_country
WHERE disease = "MUMPS";
DELETE FROM diseases
WHERE disease = "MUMPS";

# Since there's almost no data about TYPHOID vaccination (only 2020 year of Pakistan, 2018, 2019 and 2020 of Cuba and 2018 of Kazakhstan we're removing it)

DELETE FROM cases_country
WHERE disease = "TYPHOID";
DELETE FROM covarage_country
WHERE ANTIGEN LIKE "%TYPHOID%";
DELETE FROM vaccines_diseases
WHERE vaccine LIKE "%TYPHOID%";
DELETE FROM vaccines_names
WHERE vaccine LIKE "%TYPHOID%";
DELETE FROM diseases
WHERE disease = "TYPHOID";

# Removing Yellow fever in EUR zone, since it's not complete and there's only one case in Spain in 2009 and 547 vaccines in Malta

DELETE FROM covarage_country
WHERE ANTIGEN = "YFV" AND DOSES="547" AND YEAR = "2009" AND COUNTRYNAME="Malta";

DELETE FROM cases_country
WHERE COUNTRY="Spain" AND YEAR="2009" AND DISEASE = "YFEVER" AND CASES = "1";

# Delete row that don't have any values
DELETE FROM covarage_country
WHERE COVERAGE_CATEGORY="PAB";
DELETE FROM covarage_country
WHERE COVERAGE_CATEGORY="OFFICIAL";
DELETE FROM covarage_country
WHERE COVERAGE_CATEGORY="WUENIC";

# Delete the years before 1999, since there's no information usefull. Only ADMIN has the target_number, the doses and the covarage.
DELETE
FROM covarage_country WHERE YEAR<1999;
DELETE 
FROM cases_country WHERE YEAR<1999; 

# Delete columns that have no utility;
ALTER TABLE covarage_country
DROP GROUP_NAME;
ALTER TABLE covarage_country
DROP COVERAGE_CATEGORY;
ALTER TABLE covarage_country
DROP CODE;
ALTER TABLE covarage_country
DROP COVERAGE_CATEGORY_DESCRIPTION;

ALTER TABLE cases_country
DROP CODE;
ALTER TABLE cases_country
DROP GROUP_NAME;
# Creating foreign keys for the diseases
ALTER TABLE cases_country
MODIFY COLUMN DISEASE VARCHAR(100);
ALTER TABLE cases_country
ADD CONSTRAINT fk_cases_disease
FOREIGN KEY (DISEASE)
REFERENCES diseases(DISEASE);


ALTER TABLE vaccines_diseases
ADD CONSTRAINT fk_vaccines_diseases
FOREIGN KEY (disease)
REFERENCES diseases(disease);

ALTER TABLE vaccines_diseases
ADD CONSTRAINT fk_diseases_vaccines
FOREIGN KEY (vaccine)
REFERENCES vaccines_names(vaccine);

ALTER TABLE covarage_country
MODIFY COLUMN ANTIGEN VARCHAR(100);
ALTER TABLE covarage_country
ADD CONSTRAINT fk_vaccines_ANTIGEN
FOREIGN KEY (ANTIGEN)
REFERENCES vaccines_names(vaccine);

#Creating the last tables
CREATE VIEW cases_WHO_zone AS( 	SELECT cc.DISEASE, cc.DISEASE_DESCRIPTION,cw.WHO_zone, cc.YEAR,  SUM(cc.CASES) AS Total_Cases
								FROM cases_country AS cc
								JOIN countries_who AS cw
								ON  cc.country = cw.country
								WHERE CASES>0
								GROUP BY cw.WHO_zone, cc.DISEASE, cc.DISEASE_DESCRIPTION, cc.YEAR
								ORDER by 
										WHO_zone,
										cc.YEAR);

CREATE VIEW vaccines_WHO_zone AS( SELECT cc.ANTIGEN_DESCRIPTION, cc.ANTIGEN, cw.WHO_zone, cc.YEAR, ROUND (SUM(cc.TARGET_NUMBER),0) AS Target,  ROUND(SUM(cc.DOSES)) AS Doses
								FROM covarage_country AS cc
								JOIN countries_who AS cw
								ON  cc.COUNTRYNAME = cw.country
								WHERE DOSES>0
								GROUP BY cw.WHO_zone, cc.ANTIGEN, cc.ANTIGEN_DESCRIPTION, cc.YEAR
								ORDER by 
										cw.WHO_zone,
										cc.YEAR);


CREATE TABLE final_data AS( SELECT DISTINCT(cwzd.DISEASE), cwzd.DISEASE_DESCRIPTION, cwzd.WHO_zone, cwzd.YEAR, cwzd.Total_Cases, vwzd.ANTIGEN_DESCRIPTION, vwzd.ANTIGEN, vwzd.Target, vwzd.Doses
							FROM  (SELECT cwz.DISEASE, cwz.DISEASE_DESCRIPTION, cwz.WHO_zone, cwz.YEAR, cwz.Total_Cases
									FROM cases_WHO_zone AS cwz
									JOIN vaccines_diseases AS vd
									ON cwz.DISEASE=vd.disease) AS cwzd
							JOIN (SELECT vwz.ANTIGEN_DESCRIPTION, vwz.ANTIGEN, vwz.WHO_zone, vwz.YEAR, vwz.Target, vwz.Doses, vd.disease 
									FROM vaccines_WHO_zone AS vwz
									JOIN vaccines_diseases AS vd
									ON vwz.ANTIGEN=vd.vaccine) AS vwzd
							ON cwzd.DISEASE = vwzd.disease AND cwzd.year = vwzd.year AND cwzd.WHO_zone = vwzd.WHO_zone);


CREATE TABLE cases_country_zone AS( 	SELECT cc.country, cc.DISEASE, cc.DISEASE_DESCRIPTION,cw.WHO_zone, cc.YEAR,  SUM(cc.CASES) AS Total_Cases
								FROM cases_country AS cc
								JOIN countries_who AS cw
								ON  cc.country = cw.country
								WHERE CASES>0
								GROUP BY cc.country, cw.WHO_zone, cc.DISEASE, cc.DISEASE_DESCRIPTION, cc.YEAR
								ORDER by 
										WHO_zone,
										cc.YEAR);
                                        
                                        
CREATE TABLE vaccines_country_zone AS( SELECT cc.COUNTRYNAME, cc.ANTIGEN_DESCRIPTION, cc.ANTIGEN, cw.WHO_zone, cc.YEAR, ROUND (SUM(cc.TARGET_NUMBER),0) AS Target,  ROUND(SUM(cc.DOSES)) AS Doses
								FROM covarage_country AS cc
								JOIN countries_who AS cw
								ON  cc.COUNTRYNAME = cw.country
								WHERE DOSES>0
								GROUP BY cw.WHO_zone, cc.ANTIGEN, cc.ANTIGEN_DESCRIPTION, cc.YEAR, cc.COUNTRYNAME
								ORDER by 
										cw.WHO_zone,
										cc.YEAR);
                                        			
CREATE TABLE final_data_country AS( SELECT DISTINCT(cwzd.country), cwzd.DISEASE,cwzd.DISEASE_DESCRIPTION, cwzd.WHO_zone, cwzd.YEAR, cwzd.Total_Cases, vwzd.ANTIGEN_DESCRIPTION, vwzd.ANTIGEN, vwzd.Target, vwzd.Doses
							FROM  (SELECT cwz.country, cwz.DISEASE, cwz.DISEASE_DESCRIPTION, cwz.WHO_zone, cwz.YEAR, cwz.Total_Cases
									FROM cases_country_zone AS cwz
									JOIN vaccines_diseases AS vd
									ON cwz.DISEASE=vd.disease) AS cwzd
							JOIN (SELECT vwz.COUNTRYNAME, vwz.ANTIGEN_DESCRIPTION, vwz.ANTIGEN, vwz.WHO_zone, vwz.YEAR, vwz.Target, vwz.Doses, vd.disease 
									FROM vaccines_country_zone AS vwz
									JOIN vaccines_diseases AS vd
									ON vwz.ANTIGEN=vd.vaccine) AS vwzd
							ON cwzd.country=vwzd.COUNTRYNAME AND cwzd.DISEASE = vwzd.disease AND cwzd.year = vwzd.year AND cwzd.WHO_zone = vwzd.WHO_zone);                                        
                                        
SELECT * FROM final_data;
SELECT * FROM final_data_country;
