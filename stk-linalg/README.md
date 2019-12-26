# stk-linalg

Functions for linear algebra

## Notes

A single list is a row vector. In a list of lists each list is a row.

## Functions

### (identity-matrix x)

x: An integer value specifying the size of the matrix (x by x)

Returns: A list of lists representing the identity matrix

### (get-rows x)

x: A list of lists representing a matrix

Returns: The integer number of rows in the matrix

### (get-cols x)

x: A list of lists representing a matrix

Returns: The integer number of columns in the matrix

### (mult-matrix-by-scalar s m)

s: A scalar value

m: A list of lists representing a matrix

Returns: A list of lists representing the matrix m multiplied by the scalar s
