//
//  SearchTest.swift
//  StandardAlgorithmsTest
//
//  Created by David Jin Li on 25/11/2021.
//

import XCTest

class SearchTest: XCTestCase {
    let testCases = [(input: [1,2,3,4,5], search: 5, expected: true), //"Random" array
                     (input: [3,4,5,78,98], search: 5, expected: true),
                     (input: [1,1,1,2,3,4,5,6,7,8], search: 5, expected: true), //Array sorted in descending order
                     (input: [], search: 5, expected: false)] // Empty array

    let searching = Searching()
   
    func testLinearSearchWithAllVariations() {
        for testCase in testCases {
            let actual = searching.linearSearch(data: testCase.input, number: testCase.search)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
    
    func testBinarySearchWithAllVariations() {
        for testCase in testCases {
            let actual = searching.binarySearch(data: testCase.input, number: testCase.search)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
    
    let performanceCases = [(input: [1,4,2,3,6], search: 6), (input: [1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,6,2,3,5,1,4,2,3,5,1,4,2,3,5], search:6),(input: [1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,6,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5,1,4,2,3,5], search: 6)]
    
    func testLinearSearchPerformance() {
        measure {
            _ = searching.linearSearch(data: performanceCases[0].input, number:performanceCases[0].search)
            _ = searching.linearSearch(data: performanceCases[1].input, number:performanceCases[1].search)
            _ = searching.linearSearch(data: performanceCases[2].input, number:performanceCases[2].search)
        }
    }
    
    func testBinarySearchPerformance() {
        measure {
            _ = searching.binarySearch(data: performanceCases[0].input, number:performanceCases[0].search)
            _ = searching.binarySearch(data: performanceCases[1].input, number:performanceCases[1].search)
            _ = searching.binarySearch(data: performanceCases[2].input, number:performanceCases[2].search)
        }
    }
}
