#include <stdio.h>

int main() {
    int n;
    
    // we first get the user input
    printf("Enter the side length of the squares: ");
    scanf("%d", &n);

    // now we print the squares row by row
    for (int i = 0; i < n; i++) {
        // filled square
        for (int j = 0; j < n; j++) {
            printf("*");
        }
        printf(" "); // Space between squares
        
        // hollow square (printing just the borders)
        for (int j = 0; j < n; j++) {
            if (i == 0 || i == n - 1 || j == 0 || j == n - 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        
        printf("\n");
    }

    return 0;
}
