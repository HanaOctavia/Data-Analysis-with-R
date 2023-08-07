## Data import

# The readr package

# read_csv(): comma-separated values (.csv) files

# read_tsv(): tab-separated values files

# read_delim(): general delimited files

# read_fwf(): fixed-width files

# read_table(): tabular files where columns are separated by white-space

# read_log(): web log files

readr_example()

read_csv(readr_example("mtcars.csv"))

# The readxl package : to transfer data from Excel into R
library(readxl)

# read_excel() function to read a spreadsheet
read_excel(readxl_example("type-me.xlsx"))

# use the excel_sheets() function to list the names of the individual sheets
excel_sheets(readxl_example("type-me.xlsx"))

# To specify a sheet by name or number, just type “sheet =” followed by the name or number of the sheet
read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")