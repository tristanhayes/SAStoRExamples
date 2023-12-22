# How to import data into R from SAS, without lots of effort or lost information 
Practical Examples of Importing Data Correctly from SAS to R


# The Problem: 
User friendly options to import SAS datasets into R have existed for some time; however, without lots of manual coding in R, much information will be lost. For example: the continuous variable Age in a SAS dataset may set the custom format of 999 as the numeric code for missing data. If we naively use the Haven package from R this would import without error, but then our patient dataset would include the oldest humans on the planet! Another example: the dataset may code race and ethnicity as 1-5, but each of those numeric codes represents a different race (levels of the race factor variable in R). Without lots of manual coding, many datasets will not be imported correctly.

# The solution: 
In this practical example, our solution takes hundreds of lines of custom SAS formats from a lung cancer screening dataset and generates 94 lines of R code. Note: this solution does require access to SAS for the very first step, but after that step, it is all open source. We use a SAS Macro to read the custom SAS formats and generate the R script to properly import, format, and label the variables. Our practice dataset comes from the.National Lung Screening Trial Public Access Data as a hands on example for each step of data processing.

# Data Pipeline : 
1.	From SAS, use the SAS-R script to generate R code setting the levels, labels and formatting of each variable à 
2.	Run the generated R code and correct any errors à 
3.	Sit back, take a sip of coffee and marvel at the hundreds of lines of code you wrote in the blink of an eye. Now you have a properly read-in, final dataframe ready to analyze in R.

# Items We Will Need

1.	The SAS to R script from Github. You can download it directly from here: [https://github.com/clindocu/sas-r](https://github.com/clindocu/sas-r). Please be sure to star the developer’s project so they can get some credit for their effort.
2.	Import_format.sas – This is the SAS custom format script which explains to SAS how to label and display the data.
3.	nlst_data_formatted.sas7bdat – this is the SAS format of the National Lung Cancer Screening Trial dataset we are using here.

#Step 1 edit: sas-r

Sas-r is a simple SAS macro program. You only need to change three things:
	a. Source Dataset Location (where your sas dataset, the sas7bdat file is located)
	b. Paste the custom formats directly into the sas-r script
	c. Output R Program Name

For part (b), you can also point the macro to a format script file (*.sas), or you may have a custom SAS formats library. The easiest way to do this for our example is to just paste the custom formats into the sas-r macro (right under where it says: “Or Create SAS Formats here”, as shown below.
 Note: for the code shown here from another example, we had to add the option (notsorted), so that R does not sort the formats alphabetically. One would hate for their ordinal Likert scale variable to be resorted arbitrarily!

# Step 2

Click run in SAS

# Step 3

Paste generated R code into your R program and lean back in your chair. You may have to install the Haven package, which does the heavy lifting of reading in the dataset into R.

# Errors, Oh No!!!!!!
In this case the NLST trial has some custom formats for missing values: .E="Screen date after lung cancer diagnosis", .N="No screen date on record", .W="Wrong Screen Administered". Unfortunately, it appears the common approach when reading SAS datasets into R is to ignore these different types of missing for continuous variables and just group them together as missing. For a biostatistician, the distinction between types of missing is meaningful. For these errors, you will have to decide on your own how to handle it. Maybe it will work fine for you to just set them all as NA, but as they say, your mileage vary.


# Final Tips/Questions?/Link
Add the notsorted option (the default setting is that categorical variables factors will be sorted alphanumeric).
For ordinal factors, the SAS Macro appears to omit this detail. You will likely need to manually apply this:

ordered_vars <- c(34:63)
dataset[ordered_vars] <- lapply(dataset[ordered_vars], as.ordered)


# Sources: 
1.	[https://github.com/clindocu/sas-r](https://github.com/clindocu/sas-r)
2.	[https://wiki.cancerimagingarchive.net/display/NLST](https://wiki.cancerimagingarchive.net/display/NLST)


