//: Playground - noun: a place where people can play
// http://www.learnswift.tips
// http://blog.teamtreehouse.com/an-absolute-beginners-guide-to-swift

import Cocoa
import Foundation

// VARS (VAR) and CONSTANTS (LET)
var str = "Hello, playground" // Infered var string

let enemies = 50
let allies = 30

println(str)
println(String(enemies))
println("The number of enemies is: \(enemies) ")

var greeting: String = "Hello World" // Not infered var string

// ARAYS
var cardNames: [String] = ["Jack", "Queen", "King"]
shoppingList = [] // empty array
println(cardNames[0])

for cardName in cardNames {
    println(cardName)
}

// DICTIONARIES
let emptyDictionary = [String: Float]()
occupations = [:]

// Mathematical functions (From Foundation)
var theCosOfZero: Double = Double(cos(0))  // theCosOfZero equals 1
