//
//  main.swift
//  StandardAlgorithmsNew
//
//  Created by Jin Li, David (MAG) on 16/11/2021.
//

import Foundation

let sorting = Sorting()
let searching = Searching()

func displayInfo() {
    print("-----------------------------")
    let algorithmsArray = ["Linear search", "Binary search", "Bubble sort", "Quick sort", "Insertion sort", "Merge sort"]
    for (index,item) in algorithmsArray.enumerated() {
        print("\(index + 1). \(item)")
    }
    print("-----------------------------")
    print("Please enter a number:")
    if let input = readLine() {
        if let integer = Int(input) {
            switch integer {
            case 1:
                displayLinearSearch()
            case 2:
                displayBinarySearch()
            case 3:
                displayBubbleSort()
            case 4:
                displayQuickSort()
            case 5:
                displayInsertionSort()
            case 6:
                displayMergeSort()
            default:
                print("Invalid input")
            }
        }
    }
}

func displayLinearSearch() {
    let testArray = [6,9,4,2,7,33,53,12,76,20,68,91]
    let n = 68
    print("-----------------------------")
    print("Linear Search: Linear search functions by iterating through an array and comparing each element of the array with the desired element")
    print("-----------------------------")
    print("Big O Complexity: \nBest case - O(1)\nAverage case - O(n)\nWorst case - O(n)\nSpace Complexity: O(1)")
    print("-----------------------------")
    print("Array: \(testArray)\nSearching for: \(n)")
    print("-----------------------------")
    _ = searching.linearSearch(data: testArray, number: n)
    print("-----------------------------")
}

func displayBinarySearch() {
    let testArray = [1,2,3,4,5,6,7,8,9,11,23,43,66,72]
    let n = 4
    print("-----------------------------")
    print("Binary Search: Binary search works by repeatedly dividing in half the portion of the list that could contain the item until the wanted item is found. A good analogy for binary sort is the process of searching for someone's name in a phone book:\n 1. Start on the middle page of the phonebook\n 2. Check  whether their surname comes before or after the page you are on\n 3. If surname comes earlier, ignore 2nd half and vice versa.\n 4. Repeat this process until found.")
    print("-----------------------------")
    print("Big O Complexity: \nBest case - O(1)\nAverage case - O(log n)\nWorst case - O(log n)\nSpace Complexity: O(1)")
    print("-----------------------------")
    print("Precondition: Array must be sorted.")
    print("-----------------------------")
    print("Array: \(testArray)\nSearching for: \(n)")
    print("-----------------------------")
    _ = searching.binarySearch(data: testArray, number: n)
    print("-----------------------------")
}

func displayBubbleSort() {
    let testArray = [43,1,642,75,214,84,1,4,5,37,5,12,3]
    print("-----------------------------")
    print("Bubble sort: Bubble sort works by repeatedly comparing and swapping each pair of adjacent elements if they are not in order.")
    print("-----------------------------")
    print("Big O Complexity: \nBest case - O(n)\nAverage case - O(n^2)\nWorst case - O(n^2)\nSpace Complexity: O(1)")
    print("-----------------------------")
    print("Unsorted Array: \(testArray)\nSorted Array: \(sorting.bubbleSort(_: testArray))")
    print("-----------------------------")
}

func displayQuickSort() {
    let testArray = [43,1,642,75,214,84,1,4,5,37,5,12,3]
    print("-----------------------------")
    print("Quick sort: Quick sort, like Merge sort, is a divide-and-conquer algorithm. It works by picking an element as a pivot and splitting the array around the pivot in such a way that elements smaller than the pivot are on the left and elements greater than the pivot are on the right side of the pivot. Using the same approach, the left and right subarrays are divided until each subarray only contains a single element. Given that these elements are sorted, the elements are combined to form a sorted array.")
    print("-----------------------------")
    print("Big O Complexity: \nBest case - O(n log n)\nAverage case - O(n log n)\nWorst case - O(n^2)\nSpace Complexity: O(n)")
    print("-----------------------------")
    print("Unsorted Array: \(testArray)\nSorted Array: \(sorting.quickSort(data: testArray))")
    print("-----------------------------")
}

func displayInsertionSort() {
    let testArray = [43,1,642,75,214,84,1,4,5,37,5,12,3]
    print("-----------------------------")
    print("Insertion sort: In Insertion sort, the first element of the array is considered to be a subarray that is sorted. It then picks the second element and compares it to its predecessor. If this element is smaller, it is compared with the elements before until the correct slot is found. Insert the element into its sorted location by moving the greater elements up one position.")
    print("-----------------------------")
    print("Big O Complexity: \nBest case - O(n)\nAverage case - O(n^2)\nWorst case - O(n^2)\nSpace Complexity: O(1)")
    print("-----------------------------")
    print("Unsorted Array: \(testArray)\nSorted Array: \(sorting.insertionSort(_: testArray))")
    print("-----------------------------")

}

func displayMergeSort() {
    print("")
}


displayInfo()
