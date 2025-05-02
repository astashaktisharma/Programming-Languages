#include <stdio.h>

int main() {
    char distanceUnit[20], fuelUnit[20]; // Strings to store units 20 char limit
    float distance, fuel, fuelEconomy;

    // getting unit names for distnace and fuel
    printf("Please enter the units for distance: ");
    scanf("%s", distanceUnit);
    printf("Please enter the units for fuel: ");
    scanf("%s", fuelUnit);

    // getting the numerical values
    printf("\nPlease enter the number of %s traveled: ", distanceUnit);
    scanf("%f", &distance);
    printf("Please enter the number of %s of fuel used: ", fuelUnit);
    scanf("%f", &fuel);

    // calculating the fuel economy
    fuelEconomy = distance / fuel;

    printf("\n%.1f %s / %.1f %s = %.2f %s per %s\n",
           distance, distanceUnit, fuel, fuelUnit, fuelEconomy, distanceUnit, fuelUnit);

    return 0;
}
