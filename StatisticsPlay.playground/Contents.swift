// Run from command line using: swift StatisticsPlay.playground/Contents.swift
import Cocoa

// Average
func calcAvg(numbers: [Double]) -> Double {
    return Double(numbers.reduce(0,combine: +)) / Double(numbers.count)
}

// Squared Distance to average averaged. Square of volatilityσ^2
func calcVar(numbers: [Double], avg: Double) -> Double {

    var distances: [Double] = []
    var diff: Double
    for number in numbers {
        diff = number - avg
        diff *= diff
        distances += [diff]
    }

    return calcAvg(distances)
}

// Standard Dev / σ / Volatility
// Square root of variance
func standardDev(variance: Double) -> Double {
    return sqrt(variance)
}

var population: [Double] = [5, 6, 11, 13, 19, 20, 25, 26, 28, 37]
var average: Double = 0.0
var variance: Double = 0.0
var standard_deviation: Double = 0.0

average = calcAvg(population)
println("The average population age is \(average)")

variance = calcVar(population, average)
println("The variance of the population age is \(variance)")

standard_deviation = standardDev(variance)
println("The variance of the population age is \(standard_deviation)")
