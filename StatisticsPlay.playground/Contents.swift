/*************************************************************************/
/* Playground to learn swift by implementing basic statistics functions  */
/* From cmd line using: swift StatisticsPlay.playground/Contents.swift   */
/*************************************************************************/

import Cocoa
import Foundation

/***********************************/
/* calcAvg                         */
/* Description: calculates average */
/***********************************/
func calcAvg(numbers: [Double]) -> Double {
    return Double(numbers.reduce(0,combine: +)) / Double(numbers.count)
}

/*************************************************************/
/* calcVar                                                   */
/* Description: given a variance and an array of sample data */
/* it calculates de variance                                 */
/* Variance: Squared Distance to average averaged.           */
/*            Square of volatility. Variances = σ^2          */
/*************************************************************/
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

/*************************************************************/
/* calcStdDev                                                */
/* Description: calculates the standard deviation given      */
/*              the variance                                 */
/* Vloatility σ: square root of variance                     */
/*            Square of volatility. Variances = σ^2          */
/*************************************************************/
func calcStdDev(variance: Double) -> Double {
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

standard_deviation = calcStdDev(variance)
println("The variance of the population age is \(standard_deviation)")

// http://stackoverflow.com/questions/24004776/input-from-the-keyboard-in-command-line-application






