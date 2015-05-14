//: Playground - noun: a place where people can play

import Cocoa

func calcAvg(numbers: [Int]) -> Double {
    return Double(numbers.reduce(0,combine: +) )/Double(numbers.count)
}

var population: [Int] = [5, 6, 11, 13, 19, 20, 25, 26, 28, 37]
var average: Double = 0.0

average = calcAvg(population)

println("The average population age is \(average)")


