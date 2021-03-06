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

### (m* m1 m2)

m1: A matrix

m2: A matrix

Returns: The product of m1 and m2

### (transpose m)

m: A matrix

Returns: The transpose of m

### (zero-row n)

n: The number of elements in the row

Returns: A list of n zeros

### (dot* l1 l2)

l1: A list of n elements

l2: A list of n elements

Returns: The dot product of l1 and l2