//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Jin Li, David (MAG) on 25/11/2021.
//

import XCTest

class SortingTest: XCTestCase {
    let testCases = [(input: [3,5,1,2,9], expected: [1,2,3,5,9]), //"Random" array
                     (input: [30,15,5,2,39], expected: [2,5,15,30,39]),
                     (input: [10,9,8,7,6,5,4,3,2], expected: [2,3,4,5,6,7,8,9,10]), //Array sorted in descending order
                     (input: [], expected: [])] // Empty array
    
    func testBubbleSortWithAllVariationsReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
    
    func testInsertionSortWithAllVariationsReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.insertionSort(testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
    
    func testQuickSortWithAllVariationsReturnsSortedArray() {
        //arrange
        let sorting = Sorting()
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.quickSort(data: testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
    
    func testBubbleSortPerformance() {
        let sorting = Sorting()
        let testArray = [1,7,6,5,4,3,1]
        measure {
            _ = sorting.bubbleSort(testArray)
        }
    }
}
