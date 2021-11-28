//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by Jin Li, David (MAG) on 16/11/2021.
//

import Foundation
class Sorting {
    //Bubble Sort
    func bubbleSort(_ data: [Int]) -> [Int] {
        if data.count == 0 {
            return []
        } else {
            var data = data
            for _ in 0...data.count {
                for i in 0..<data.count - 1 {
                    if data[i] > data[i + 1] {
                        let holder = data[i]
                        data[i] = data[i + 1]
                        data[i + 1] = holder
                    }
                }
            }
            return data
        }
    }
    // Insertion Sort
    func insertionSort(_ data: [Int]) -> [Int] {
        if data.count == 0 {
            return []
        } else {
            var data = data
            for i in 1..<data.count {
                var position = i
                let element = data[i]
                while position > 0 && data[position - 1] > element {
                    data[position] = data[position - 1]
                    position -= 1
                }
                data[position] = element
              }
              return data
        }
    }
    //Quick Sort
    func quickSort(data: [Int]) -> [Int] {
        if data.count == 0 {
            return data
        } else {
            let data = data
            var greaterArray = [Int]()
            var lowerArray = [Int]()
            let pivot = data[0]
            for i in 1..<data.count {
                if data[i] > pivot {
                    greaterArray.append(data[i])
                } else {
                    lowerArray.append(data[i])
                }
            }
            return quickSort(data : lowerArray) + [pivot] + quickSort(data: greaterArray)
        }
    }
    //Merge Sort
    func mergeSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let mid = data.count/2
            let rightArray = mergeSort(data: Array(data[mid..<data.count]))
            let leftArray = mergeSort(data: Array(data[0..<mid]))
            return merge(left: leftArray, right: rightArray)
        }
    }
    
    func merge(left: [Int], right: [Int]) -> [Int] {
        var sortedArray = [Int]()
        var leftPosition = 0
        var rightPosition = 0
        while leftPosition < left.count && rightPosition < right.count {
            if left[leftPosition] < right[rightPosition] {
                sortedArray.append(left[leftPosition])
                leftPosition += 1
            } else if left[leftPosition] > right[rightPosition] {
                sortedArray.append(right[rightPosition])
                rightPosition += 1
            } else {
                sortedArray.append(left[leftPosition])
                leftPosition += 1
                sortedArray.append(right[rightPosition])
                rightPosition += 1
            }
        }
        while leftPosition < left.count {
            sortedArray.append(left[leftPosition])
            leftPosition += 1
        }
        while rightPosition < right.count {
            sortedArray.append(right[rightPosition])
            rightPosition += 1
        }
        return sortedArray
    }
}
