#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

int main() {
    int number;

    // enter integer
    printf("Enter a positive integer: ");
    scanf("%d", &number);

    printf("You entered the integer %d.\n", number);
    
    int temp = number;
    while (temp > 0) {
        int digit = temp % 10;

        if (digit != 0) {
            for (int i = 0; i < digit; i++) {
                printf(" ");
            }
        }

        printf("%d\n", digit);
        temp /= 10;
    }

    // enter float
    char float_input[50];
    printf("Enter a floating-point number: ");
    scanf("%s", float_input);

    double float_number = atof(float_input);

    char *dot_ptr = strchr(float_input, '.');
    int original_decimal_places = 0;
    if (dot_ptr != NULL) {
        original_decimal_places = strlen(dot_ptr + 1);
    }

    for (int i = 1; i <= 10; i++) {
        if (i <= original_decimal_places) {
            printf("%.*f\n", i, float_number);
        } else {
            double factor = pow(10, i);
            double rounded = round(float_number * factor) / factor;
            printf("%.*f\n", i, rounded);
        }
    }

    return 0;
}
