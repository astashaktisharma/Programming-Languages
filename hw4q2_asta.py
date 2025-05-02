# Filled and hollow squares side by side

n = int(input("Enter the side length of the squares: "))

for i in range(n):
    # Filled square
    print("*" * n, end=" ")

    # Hollow square
    for j in range(n):
        if i == 0 or i == n - 1 or j == 0 or j == n - 1:
            print("*", end="")
        else:
            print(" ", end="")

    print() 