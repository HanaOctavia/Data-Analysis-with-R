## Transforming data

# Step 1 : Create Dataframe
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)
print(employee)

# Step 2 : Transforming Data with separate(), to split these into separate columns
separate(employee, name, into = c("first_name", "last_name"), sep = " ")

# Step 3 : Transforming Data with unite(), to merge columns together. Basically, it does the opposite of separate
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

employee <- data.frame(id, first_name, last_name, job_title)
print(employee)

unite(employee, "name", first_name, last_name, sep = " ")

# Step 4 : Transforming Data with mutate(), to perform the conversion and add a new column, it will return a tibble with our new column
View(penguins)
penguins %>% 
  mutate(body_mass_kg = body_mass_g/1000, bill_length_m = bill_length_mm/1000)