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
println(cardNames[0])

for cardName in cardNames {
    println(cardName)
}

// Mathematical functions (From Foundation)

// DICTIONARIES
let emptyDictionary = [String: Float]()

var personInfo: Dictionary = ["name": "Socrates", "age": 28]

personInfo["sex"] = "man"

personInfo["name"] //  hachinobu
personInfo["age"]    //  28
personInfo["sex"]    //  man

personInfo.count

let keys: Array = Array(personInfo.keys)

let values: Array = Array(personInfo.values)

if let name = personInfo["name"] {
    println("name is \(name)")
} else {
    personInfo["name"] = "Socrates"
}

personInfo.updateValue("Plato", forKey: "name")

// If the key already exists it updates it, if it does not exist it inserts it
if let age = personInfo.updateValue(29, forKey: "age") {
    println("update")
} else {
    println("insert")
}

personInfo["height"] = 171
personInfo.removeValueForKey("height")
personInfo["name"] = nil

// var emptyDictionary = Dictionary<String, String>()
// or
// var emptyDictionary = [String: String]()

var optionalDict: Dictionary<String, NSObject?> = ["key1": "A", "key2": "B"] // Values can be NSObjects
optionalDict["key1"] = nil // values can be empty

var platforms = [
    "Apple": "iOS",
    "Google" : "Android",
    "Microsoft" : "Windows Phone"
]

var ranking = [
    1: "Gold",
    2: "Silver",
    3: "Bronze"
    
]

var toppings = ["Pepperoni":0.25,
    "Sausage":0.26,
    "Onions":0.02,
    "Green Peppers":0.03
]

let piePrice:[String:Double] = ["Apple":3.99,"Raspberry":0.35]
let numberOfSlices = 2.0
let extPrice = piePrice["Apple"]! * numberOfSlices
println("\(numberOfSlices) of Apple Pie is \(extPrice)")

for myValue  in toppings.values{
    print ("Value =  \(myValue)")
}

//make a 10% price increase
for myKey  in toppings.keys{
    println("Toppings value: \(toppings[myKey]) ")
    toppings[myKey] = toppings[myKey]! * 1.10
}

