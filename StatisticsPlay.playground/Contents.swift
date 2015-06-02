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
/* Description: given an average and an array of sample data */
/* it calculates de variance of the distribution             */
/* Variance: Squared Distance to average averaged.           */
/*           Square of volatility. Variance = σ^2            */
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
/* Volatility σ: square root of variance                     */
/*               (StdDev) σ = sqrt(Variance)                 */
/*************************************************************/

func calcStdDev(variance: Double) -> Double {
    return sqrt(variance)
}

var population: [Double] = [5, 6, 11, 13, 19, 20, 25, 26, 28, 37, 28, 90]
var average: Double = 0.0
var variance: Double = 0.0
var standard_deviation: Double = 0.0


average = calcAvg(population)
println("The average population age is \(average)")

variance = calcVar(population, average)
println("The variance of the population age is \(variance)")

standard_deviation = calcStdDev(variance)
println("The variance of the population age is \(standard_deviation)")

// Try to put fat tails and chart, test fragility

// Getting data from google finance API
// let url = NSURL(string: "http://www.kirainet.com")

// Sample Stock app
    //  http://www.myplacesandme.com/wordpress/swift-app-tutorial-swiftstocks-tuples-switch-singleton-webservices-part-i/

// Hit API
    // NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: url)) { data, response, error in
    //   println(NSString(data: data, encoding: NSUTF8StringEncoding))
    // }.resume()
    // task.resume()
    // Getting data from Excel, csv, txt files

// Getting data from standard output
    // http://stackoverflow.com/questions/24004776/input-from-the-keyboard-in-command-line-application
    // var input = NSString(data: NSFileHandle.fileHandleWithStandardInput().availableData, encoding:NSUTF8StringEncoding)
    // println("The input is: \(input)")
