//
//  main.swift
//  PrimeTest
//
//  Created by MASSIMILIANO REDOLFI on 26/10/2019.
//  Copyright © 2019 MASSIMILIANO REDOLFI. All rights reserved.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
    if(n == 2) {
        return true;
    }
    
    if(n<=1 || n%2==0) {
        return false;
    }
    
    let iMax: Int = Int(sqrt(Double(n)));
    
    var i = 3;
    while(i <= iMax) {
        if(n % i == 0) {
            return false;
        }
        i = i + 2;
    }
//    for i in stride(from: 3, to: iMax, by: 2) {
//        if(n % i == 0) {
//            return false;
//        }
//    }
    
    return true;
}

func countPrimes(_ max: Int) -> Int {
    var count = 0;
    var i = 1;
    while(i <= max) {
        if(isPrime(i)) {
            count = count + 1;
        }
        i = i + 1;
    }
    return count;
}

print("Start\n");

let start = DispatchTime.now();
let np = countPrimes(10_000_000);
let end = DispatchTime.now();
let dt = Double(end.uptimeNanoseconds - start.uptimeNanoseconds) / 1_000_000_000;

print("\nPrimi trovati:\(np), t: \(dt)\n")
