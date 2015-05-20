//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var filename = "tyc2.dat.00"

inputReader.open("tyc2.dat.00")

//var inputStream = NSInputStream(fileAtPath: "tyc2.dat.00")
//let stream: NSInputStream = NSInputStream(data: data)


//var inputBuffer = [UInt8](count: 32478734 * 4, repeatedValue: 0)

//let data: NSData = " .".dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
/*let stream: NSInputStream = NSInputStream(fileAtPath: "tyc2.dat.00")!
var buffer = [UInt8](count: 8, repeatedValue: 0)

stream.open()

if stream.hasBytesAvailable {
    let result :Int = stream.read(&buffer, maxLength: buffer.count)
    print(result)
}*/

//var data :NSData? = FileUtility.dataFromPath("tyc2.dat.00") as? NSData
let file = "tyc2.dat.00"

if let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String] {

    let dir = dirs[0] //documents directory
    let path = dir.stringByAppendingPathComponent(file);
    let text = "some text"
    print text

    //writing
    //text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
    
    //reading
    let text2 = String(contentsOfFile: path, encoding: NSUTF8StringEncoding, error: nil)
    print(text2)
}

