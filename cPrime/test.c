#include <stdio.h>
#include <time.h>
#include <math.h>

int isPrime( unsigned n) {
    if(n == 2)
        return 1;
    if(n <= 1 || n%2 == 0)
        return 0;

     unsigned maxN = sqrt(n);

    for ( unsigned i = 3; i <= maxN; i += 2)
    {
        if(n % i == 0)
            return 0;
    }
    return 1;
}

 unsigned countPrimes( unsigned max) {
     unsigned n = 0;
    for ( unsigned i = 1; i <= max; i++) {
        if (isPrime(i))
            n++;
    }
    return n;
}

int main() {
    setbuf(stdout, NULL);
    printf("\nStart...\n");

    clock_t tStart = clock();
     unsigned count = countPrimes(10000000);
    clock_t tEnd = clock();
    printf("Primi trovati: %u\n", count);
    printf("\nTempo impiegato: %f\n", (1.*(tEnd - tStart)) / CLOCKS_PER_SEC);
}



