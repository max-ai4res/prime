test();

function test() {
    let tmp = 0;
    console.time("mytest");
    
    let nPrimi = countPrime(100000);
    
    console.timeEnd("mytest");
    console.log("Primi identificati: " + nPrimi);
}

function countPrime(maxValueToCheck) {
    let n = 0;
    for(let i=2; i<=maxValueToCheck; i++) {
        if(isPrime(i))
            n++;
    }

    return n;
}

function isPrime(n) {
    if(n <= 1)
        return false;
    if(n == 2)
        return true;

    const maxI = n/2;
    for(let i=3; i<=maxI; i+=2) {
        if(n % i == 0)
            return false;
    }

    return true;
}