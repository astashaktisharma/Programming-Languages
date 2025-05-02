# finding the roots of a quadratic or linear equation using exception handling
#quadratic equation: ax^2 + bx + c = 0

import math
import cmath

try:
    user_input = input("Please enter a, b, and c separated by commas: ")
    a_str, b_str, c_str = user_input.split(',')

    a = float(a_str)
    b = float(b_str)
    c = float(c_str)

    #solving quadratic equation: ax^2 + bx + c = 0
    try:
        # calculating discriminant
        d = b**2 - 4*a*c

        # checking if the discriminant is positive, negative or zero
        if d >= 0:
            root1 = (-b + math.sqrt(d)) / (2 * a)
            root2 = (-b - math.sqrt(d)) / (2 * a)
        else:
            root1 = (-b + cmath.sqrt(d)) / (2 * a)
            root2 = (-b - cmath.sqrt(d)) / (2 * a)

        roots = [root1, root2]

    except ZeroDivisionError:
        # If a == 0, then it's a linear equation: bx + c = 0, we solve for x = -c / b
        try:
            root1 = -c / b
            roots = [root1]
        except ZeroDivisionError:
            # If a == 0 and b == 0, it's not a valid equation
            roots = []

    if len(roots) == 0:
        print("No valid roots found.")
    else:
        print("roots: ", roots)
        print("\nChecking the roots:")
        for r in roots:
            value = a*r**2 + b*r + c
            print(value)

except:
    print("Something went wrong. Please enter numbers correctly, like: 1,2,-3")
