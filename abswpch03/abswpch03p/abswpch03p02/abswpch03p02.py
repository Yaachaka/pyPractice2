#!/usr/bin/env python
# coding: utf-8

"""
abswpch03p02/abswpch03p02.ipynb: Input Validation Add try and except statements to the previous project to detect whether the user types in a noninteger string. Normally, the int() function will raise a ValueError error if it is passed a noninteger string, as in int('puppy'). In the except clause, print a message to the user saying they must enter an integer.
"""

print('*'*80)

#-----------------------------------------------------
def collatz(number):
    if number%2:
        return 3 * number + 1
    else:
        return number // 2
#-----------------------------------------------------
number = input('Enter a number: ')

try:
    while True:
        number = collatz(number)
        print(number)
        if number <= 1:
            break
except TypeError:
    print('Error: TypeError.')
    print('Your input must be an integer.')
#-----------------------------------------------------
print('*'*80)

"""
@@@@ Trial1:
********************************************************************************
Enter a number: 12
Error: TypeError.
Your input must be an integer.
********************************************************************************
"""

