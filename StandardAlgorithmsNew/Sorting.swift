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
}
