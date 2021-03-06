#
# Dumping data for table 'DERIV_CD'
#

INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('A', 'Analytical data');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('AI', 'Analytical data; from the literature or  government;  incomplete documentation');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('AR', 'Analytical data; derived by linear regression');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('AS', 'Analytical data; derived by summation of components with source code 1 or 7');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BD', 'Based on same food; Drained solids from solids and liquids or vice versa (canned fruits and vegetables)');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFAN', 'Based on another form of the food or similar food; Concentration adjustment; Ash; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFCN', 'Based on another form of the food or similar food; Concentration adjustment; Carbohydrate; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFFN', 'Based on another form of the food or similar food; Concentration adjustment; Fat; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFFY', 'Based on another form of the food or similar food; Concentration adjustment; Fat; Retention factors used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFNN', 'Based on another form of the food or similar food; Concentration adjustment; Non-fat solids; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFNY', 'Based on another form of the food or similar food; Concentration adjustment; Non-fat solids; Retentions factors used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFPN', 'Based on another form of the food or similar food; Concentration adjustment; Protein; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFPY', 'Based on another form of the food or similar food; Concentration adjustment; Protein; Retention factors used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFSN', 'Based on another form of the food or similar food; Concentration adjustment; Solids; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFSY', 'Based on another form of the food or similar food; Concentration adjustment; Solids; Retention factors used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFYN', 'Based on another form of the food or similar food; Concentration adjustment; Yield; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFYY', 'Based on another form of the food or similar food; Concentration adjustment; Yield; Retention factors used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFZN', 'Based on another form of the food or similar food; Concentration adjustment; No adjustment; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BFZY', 'Based on another form of the food or similar food; Concentration adjustment; No adjustment; Retention factors used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('BNA', 'Based on another form of the same food or similar food: constituents normalized to total; vitamin A');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('CAAN', 'Calculated from different food; From average values for food category; Ash; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('CAFN', 'Calculated from different food; From average values for food category; Fat; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('CASN', 'Calculated from different food; From average values for food category; Solids; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('CAZN', 'Calculated from different food; From average values for food category; No adjustment; Retention factors not used');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('DA', 'Concentration adjustment using factor; derived from analytical data');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('DI', 'Concentration adjustment using factor; derived from imputed data');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('FLA', 'Estimated formulation based on ingredient list; Linear program used to estimate ingredients; Analytical data');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('FLC', 'Estimated formulation based on ingredient list; Linear program used to estimate ingredients; Claim on label/serving');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('FLM', 'Estimated formulation based on ingredient list; Linear program used to estimate ingredients; Manuf. Calc. data/100');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('JA', 'Aggregated data involving combinations of data with only source codes 1 and 12 and/or 13');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('JO', 'Aggregated data involving combinations of data with different source codes when at least one code is not 1, 12, or 6.');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('LC', 'Label claim (back calculated from label by NDL staff; Calculated from label claim/serving (g or %RDI)');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('MA', 'Manufacturer supplied(industry or trade association); Analytical data, incomplete documentation');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('MC', 'Manufacturer supplied; Calculated by manufacturer or unknown if analytical or calculated');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('ML', 'Manufacturer supplied; Value upon which manufacturer based label claim for fortified/enriched nutrient');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('NC', 'Nutrient that is based on other nutrient/s; calculated rather than analyzed');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('NP', 'Nutrient that is based on other nutrient/s; calculated by difference or summed (with or without activity factors)\nEx. Pr');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('NR', 'Nutrient that is based on other nutrient/s; value used directly, ex. Nut.#204 from Nut.#298');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('O', 'Other procedure used from imputing');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('PAE', 'Based on physical composition; Derived from analytical data; Estimated physical composition');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('PAK', 'Based on physical composition; Derived from analytical data; Known physical composition');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('PIE', 'Based on physical composition; Derived from imputed data; Estimated physical composition');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('PIK', 'Based on physical composition; Derived from imputed data; Known physical composition');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RA', 'Recipe; Approximate ingredient proportions (ex. combination of several recipes)');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RC', 'Recipe; Cookbook');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RF', 'Recipe; Formulary of standard products (formulary or standards of identity)');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RK', 'Recipe; Known formulation (dissection data or proprietary formulation)');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RKA', 'Recipe; Known formulation; No adjustments applied, combination of source codes 1, 12, and/or 6.');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RKI', 'Recipe;Known formulation;No adjustments applied, combination of source codes which includes codes other than 1,12,or 6');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RP', 'Recipe; Per package directions (ex. refrigerated dough, toast, cake mix)');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RPA', 'Recipe; Per package directions; No adjustments applied, combination of source codes 1, 12, and/or 6.');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('RPI', 'Recipe;Per package directions;No adjustments applied, combination of source codes which incl codes other than 1,12,or 6');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('S', 'Product standard, such as enrichment level specified in CFR or AMS commodity standard');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('T', 'Taken from another source--other tables of food composition');
INSERT INTO `DERIV_CD` (`Deriv_CD`, `Deriv_Desc`) VALUES ('Z', 'Assumed zero (Insignificant amount or not naturally occurring in a food, such as fiber in meat)');
# 55 records