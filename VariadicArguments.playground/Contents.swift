//: Playground - noun: a place where people can play

import Cocoa

// Array
func sumOf(numbers: [Int]) -> Int {
    var total = 0
    for i in numbers {
        total += i
    }
    return total
}

// Variadic arguments
func sumOf(numbers: Int...) -> Int {
    return sumOf(numbers)
}

var variadicSum = sumOf(1, 2, 3, 4, 5)  // Variadic argument call
var arraySum = sumOf([1, 2, 3, 4, 5])