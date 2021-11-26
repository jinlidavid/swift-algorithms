//
//  Searching.swift
//  StandardAlgorithmsNew
//
//  Created by David Jin Li on 25/11/2021.
//

import Foundation
class Searching {
    //Linear Search
    func linearSearch(data: [Int], number: Int) -> Bool {
        for (i,n) in data.enumerated() {
            print("Looking at \(n), the element at index \(i)...")
            print("Comparing \(n) with \(number)...")
            if n == number {
                print("Found! \(n) is equal to \(number).\n")
                return true
            }
            print("\(n) is not equal to \(number).\n")
        }
        print("Not Found.")
        return false
    }
    
    // Binary search
    func binarySearch(data: [Int], number: Int) -> Bool {
        var lowerBound = 0
        var upperBound = data.count - 1
        while lowerBound <= upperBound {
            let mid = (lowerBound + upperBound)/2
            if data[mid] < number {
                lowerBound = mid + 1
            } else if data[mid] > number {
                upperBound = mid - 1
            } else {
                print("Found!")
                return true
            }
        }
        print("Not Found.")
        return false
    }
}

