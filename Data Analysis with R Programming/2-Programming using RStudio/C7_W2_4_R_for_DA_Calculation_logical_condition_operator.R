## Operator Calculation
quarter_1_sales <- 35657.98 
quarter_2_sales <- 43810.55 

midyear_sales <- quarter_1_sales + quarter_2_sales

## Logical operators
# Logical operators return a logical data type such as TRUE or FALSE
# AND Operator
TRUE & TRUE
x <- 10
x > 3 & x < 12

# OR Operator
TRUE | FALSE
y <- 7
y < 8 | y > 16

# NOT operator 
!TRUE

## Conditional statements 
# A conditional statement is a declaration that if a certain condition holds, then a certain event must take place

# if statement
if (x > 0) {
  print("x is a positive number")
}

# else statement
x <- -7

if (x > 0) {
  print ("x is a positive number")
  
} else {
  print ("x is either a negative number or zero")
  
}

# else if statement
if (x < 0) {
  print("x is a negative number")
} else if (x == 0) {
  print("x is zero")
} else {
  print("x is a positive number")
}