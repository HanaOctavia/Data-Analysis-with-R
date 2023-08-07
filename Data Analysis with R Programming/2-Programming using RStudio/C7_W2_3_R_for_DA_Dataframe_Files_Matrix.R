## Data Frame
# A data frame is a collection of columns–similar to a spreadsheet or SQL table

# to manually create a data frame in R, you can use the data.frame() function
# The data.frame() function takes vectors as input.
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))

## Files
# Use the dir.create function to create a new folder, or directory, to hold your files
dir.create ("destination_folder")

# Use the file.create() function to create a blank file
file.create ("new_text_file.txt") 
file.create ("new_word_file.docx") 
file.create ("new_csv_file.csv")

# Copying a file can be done using the file.copy() function
file.copy ("new_text_file.txt" , "destination_folder")

# delete R files using the unlink() function
unlink ("some_.file.csv")

## Matrices 
# A matrix is a two-dimensional collection of data elements
# To create a matrix in R, you can use the matrix() function

# to specify the number of rows or the number of columns by using the code nrow or ncol
matrix(c(3:8), nrow = 2)
matrix(c(3:8), ncol = 2)