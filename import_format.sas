%let dir= REPLACENAME;
libname lung "&dir.";

Proc format;

* Gender;
value gender_fmt
  1 = "Male"
  2 = "Female";

* Race;
value race_fmt
  1 = "White"
  2 = "Black or African-American"
  3 = "Asian"
  4 = "American Indian or Alaskan Native"
  5 = "Native Hawaiian or Other Pacific Islander"
  6 = "More than one race"
  7 = "Participant refused to answer"
  95 = "Missing data form - form is not expected to ever be completed"
  96 = "Missing - no response"
  98 = "Missing - form was submitted and the answer was left blank"
  99 = "Unknown/ decline to answer";

* Smoking status at T0;
value cigsmok_fmt
  0 = "Former"
  1 = "Current";

* Days since randomization at time of screening (for T0, T1, and T2 exams);
value scr_days_fmt
  .E = "Screen date after lung cancer diagnosis"
  .N = "No screen date on record"
  .W = "Wrong Screen Administered";

* Result of isolation screen (for T0, T1, and T2 exams);
value scr_iso_fmt
  1 = "Negative screen, no significant abnormalities"
  2 = "Negative screen, minor abnormalities not suspicious for lung cancer"
  3 = "Negative screen, significant abnormalities not suspicious for lung cancer"
  4 = "Positive, Change Unspecified, nodule(s) >= 4 mm or enlarging nodule(s), mass(es), other non-specific abnormalities suspicious for lung cancer"
  10 = "Inadequate Image"
  11 = "Not Compliant - Left Study"
  13 = "Not Expected - Cancer before screening window"
  14 = "Not Expected - Death before screening window"
  15 = "Not Compliant - Refused a screen"
  17 = "Not Compliant - Wrong Screen"
  23 = "Not Expected - Cancer in screening window"
  24 = "Not Expected - Death in screening window"
  95 = "Not Compliant - Erroneous Report of Lung Cancer Before Screen (LSS Only)"
  97 = "Not Compliant - Form Not Submitted, Window Closed";

* Result of screen associated with the first confirmed lung cancer diagnosis;
value can_scr_fmt
  0 = "No Cancer"
  1 = "Positive Screen"
  2 = "Negative Screen"
  3 = "Missed Screen"
  4 = "Post Screening";

* Is the diagnosis of lung cancer associated with a positive screen?;
value canc_rpt_link_fmt
  0 = "No"
  1 = "Yes";

* Study year associated with first confirmed lung cancer;
value cancyr_fmt
  .N = "Not Applicable"
  0 = "T0"
  1 = "T1"
  2 = "T2"
  3 = "T3"
  4 = "T4"
  5 = "T5"
  6 = "T6"
  7 = "T7";

* Lung cancer grade;
value de_grade_fmt
  .N = "Not Applicable"
  1 = "Grade Cannot Be Assessed (GX)"
  2 = "Well Differentiated (G1)"
  3 = "Moderately Differentiated (G2)"
  4 = "Poorly Differentiated (G3)"
  5 = "Undifferentiated (G4)"
  6 = "Unspecified in Pathology Report"
  8 = "Unknown"
  9 = "Missing";

* Lung cancer Stage (AJCC 6);
value de_stag_fmt
  .M = "Missing"
  .N = "Not Applicable"
  110 = "Stage IA"
  120 = "Stage IB"
  210 = "Stage IIA"
  220 = "Stage IIB"
  310 = "Stage IIIA"
  320 = "Stage IIIB"
  400 = "Stage IV"
  888 = "TNM not available"
  900 = "Occult Carcinoma"
  994 = "Carcinoid, cannot be assessed"
  999 = "Unknown, cannot be assessed";

* AJCC 7th edition stage;
value de_stag_7thed_fmt
  .M = "Missing"
  .N = "Not Applicable"
  110 = "Stage IA"
  120 = "Stage IB"
  210 = "Stage IIA"
  220 = "Stage IIB"
  310 = "Stage IIIA"
  320 = "Stage IIIB"
  
* Gender;
value gender_fmt
  1 = "Male"
  2 = "Female";

* Race;
value race_fmt
  1 = "White"
  2 = "Black or African-American"
  3 = "Asian"
  4 = "American Indian or Alaskan Native"
  5 = "Native Hawaiian or Other Pacific Islander"
  6 = "More than one race"
  7 = "Participant refused to answer"
  95 = "Missing data form - form is not expected to ever be completed"
  96 = "Missing - no response"
  98 = "Missing - form was submitted and the answer was left blank"
  99 = "Unknown/ decline to answer";

* Smoking status at T0;
value cigsmok_fmt
  0 = "Former"
  1 = "Current";

* Days since randomization at time of screening (for T0, T1, and T2 exams);
value scr_days_fmt
  .E = "Screen date after lung cancer diagnosis"
  .N = "No screen date on record"
  .W = "Wrong Screen Administered";

* Result of isolation screen (for T0, T1, and T2 exams);
value scr_iso_fmt
  1 = "Negative screen, no significant abnormalities"
  2 = "Negative screen, minor abnormalities not suspicious for lung cancer"
  3 = "Negative screen, significant abnormalities not suspicious for lung cancer"
  4 = "Positive, Change Unspecified, nodule(s) >= 4 mm or enlarging nodule(s), mass(es), other non-specific abnormalities suspicious for lung cancer"
  10 = "Inadequate Image"
  11 = "Not Compliant - Left Study"
  13 = "Not Expected - Cancer before screening window"
  14 = "Not Expected - Death before screening window"
  15 = "Not Compliant - Refused a screen"
  17 = "Not Compliant - Wrong Screen"
  23 = "Not Expected - Cancer in screening window"
  24 = "Not Expected - Death in screening window"
  95 = "Not Compliant - Erroneous Report of Lung Cancer Before Screen (LSS Only)"
  97 = "Not Compliant - Form Not Submitted, Window Closed";

* Result of screen associated with the first confirmed lung cancer diagnosis;
value can_scr_fmt
  0 = "No Cancer"
  1 = "Positive Screen"
  2 = "Negative Screen"
  3 = "Missed Screen"
  4 = "Post Screening";

* Is the diagnosis of lung cancer associated with a positive screen?;
value canc_rpt_link_fmt
  0 = "No"
  1 = "Yes";

* Study year associated with first confirmed lung cancer;
value cancyr_fmt
  .N = "Not Applicable"
  0 = "T0"
  1 = "T1"
  2 = "T2"
  3 = "T3"
  4 = "T4"
  5 = "T5"
  6 = "T6"
  7 = "T7";

* Lung cancer grade;
value de_grade_fmt
  .N = "Not Applicable"
  1 = "Grade Cannot Be Assessed (GX)"
  2 = "Well Differentiated (G1)"
  3 = "Moderately Differentiated (G2)"
  4 = "Poorly Differentiated (G3)"
  5 = "Undifferentiated (G4)"
  6 = "Unspecified in Pathology Report"
  8 = "Unknown"
  9 = "Missing";

* Lung cancer Stage (AJCC 6);
value de_stag_fmt
  .M = "Missing"
  .N = "Not Applicable"
  110 = "Stage IA"
  120 = "Stage IB"
  210 = "Stage IIA"
  220 = "Stage IIB"
  310 = "Stage IIIA"
  320 = "Stage IIIB"
  400 = "Stage IV"
  888 = "TNM not available"
  900 = "Occult Carcinoma"
  994 = "Carcinoid, cannot be assessed"
  999 = "Unknown, cannot be assessed";

* AJCC 7th edition stage;
value de_stag_7thed_fmt
  .M = "Missing"
  .N = "Not Applicable"
  110 = "Stage IA"
  120 = "Stage IB"
  210 = "Stage IIA"
  220 = "Stage IIB"
  310 = "Stage IIIA"
  320 = "Stage IIIB"
   400 = "Stage IV"
  900 = "Occult Carcinoma"
  999 = "Unknown, cannot be assessed";

* Lung cancer type from ICD-O-3 morphology;
value de_type_fmt
  .M = "Missing"
  .N = "Not Applicable";

* Tumor location variables;
value tumor_loc_fmt
  .N = "Not Applicable"
  0 = "No"
  1 = "Yes";

run;



  proc import datafile="&dir./nlst_780_prsn_idc_20210527.csv"
    out=nlst_data
    dbms=csv
    replace;
    getnames=yes;
run;

data lung.nlst_data_formatted;
    set nlst_data;
    
    * Apply formats;
    format gender gender_fmt.
          race race_fmt.
          cigsmok cigsmok_fmt.
          scr_days0 scr_days_fmt.
          scr_days1 scr_days_fmt.
          scr_days2 scr_days_fmt.
          scr_iso0 scr_iso_fmt.
          scr_iso1 scr_iso_fmt.
          scr_iso2 scr_iso_fmt.
          can_scr can_scr_fmt.
          canc_rpt_link canc_rpt_link_fmt.
          cancyr cancyr_fmt.
          de_grade de_grade_fmt.
          de_stag de_stag_fmt.
          de_stag_7thed de_stag_7thed_fmt.
          de_type de_type_fmt.
          loccar tumor_loc_fmt.
          loclhil tumor_loc_fmt.
          loclin tumor_loc_fmt.
          locllow tumor_loc_fmt.
          loclmsb tumor_loc_fmt.
          loclup tumor_loc_fmt.
          locmed tumor_loc_fmt.
          locoth tumor_loc_fmt.
          locrhil tumor_loc_fmt.
          locrlow tumor_loc_fmt.
          locrmid tumor_loc_fmt.
          locrmsb tumor_loc_fmt.
          locrup tumor_loc_fmt.
          locunk tumor_loc_fmt.;

    * Apply labels;
    label dataset_version = 'Date Stamp for Datasets'
          pid = 'Participant Identifier'
          age = 'Age at randomization (years)'
          gender = 'Gender'
          race = 'Race'
          cigsmok = 'Smoking status at T0'
          scr_days0 = 'Days since randomization at T0 screening'
          scr_days1 = 'Days since randomization at T1 screening'
          scr_days2 = 'Days since randomization at T2 screening'
          scr_iso0 = 'Result of T0 isolation screen'
          scr_iso1 = 'Result of T1 isolation screen'
          scr_iso2 = 'Result of T2 isolation screen'
          can_scr = 'Result of screen associated with lung cancer diagnosis'
          canc_free_days = 'Days to last known cancer-free status'
          canc_rpt_link = 'Diagnosis of lung cancer associated with positive screen'
          cancyr = 'Study year associated with first confirmed lung cancer'
          candx_days = 'Days from randomization to lung cancer diagnosis'
          de_grade = 'Lung cancer grade'
          de_stag = 'Lung cancer Stage (AJCC 6)'
          de_stag_7thed = 'AJCC 7th edition stage'
          de_type = 'Lung cancer type from ICD-O-3 morphology'
          lesionsize = 'Pathology lesion size of tumor in millimeters'
          loccar = 'Cancer in Carina'
          loclhil = 'Cancer in Left Hilum'
          loclin = 'Cancer in Lingula'
          locllow = 'Cancer in Left lower lobe'
          loclmsb = 'Cancer in Left main stem bronchus'
          loclup = 'Cancer in Left upper lobe'
          locmed = 'Cancer in Mediastinum'
          locoth = 'Cancer in Other Location'
          locrhil = 'Cancer in Right Hilum'
          locrlow = 'Cancer in Right lower lobe'
          locrmid = 'Cancer in Right middle lobe'
          locrmsb = 'Cancer in Right main stem bronchus'
          locrup = 'Cancer in Right upper lobe'
          locunk = 'Cancer in Unknown location';
run;

