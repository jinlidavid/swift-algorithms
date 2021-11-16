//
//  StandardAlgorithmsTest.swift
//  StandardAlgorithmsTest
//
//  Created by Jin Li, David (MAG) on 16/11/2021.
//

import XCTest

class StandardAlgorithmsTest: XCTestCase {

    func testBubbleSortWithAllVariationsReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(input: [3,5,1,2,9], expected: [1,2,3,5,9]),
                         (input: [30,15,5,2,39], expected: [2,5,15,30,39]),
                         (input: [], expected: [])]
        //act
        //assert
        
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
        
    }
    
}

