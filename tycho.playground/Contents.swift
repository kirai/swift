//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var filename = "tyc2.dat.00.txt"

//var data :NSData? = FileUtility.dataFromPath("tyc2.dat.00") as? NSData
let file = "tyc2.dat.00.txt"

if let dirs : [String] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true) as? [String] {

    print(dirs)
    
    let dir = dirs[0] //documents directory
    let path = dir.stringByAppendingPathComponent(file);
    let text = "some text"
    print(text)

    //writing
    
    let documentsPath = NSHomeDirectory() + "/Documents/"

    var path2 = "./" + filename
    
    //text.writeToFile(path, atomically: false, encoding: NSUTF8StringEncoding, error: nil);
    
    //reading
    let text2 = String(contentsOfFile: filename, encoding: NSUTF8StringEncoding, error: nil)
    
    print(text2)
}

/*let bundle = NSBundle.mainBundle()
let path = bundle.pathForResource("tyc2.dat.00", ofType: "txt")
let content = NSString.stringWithContentsOfFile(path) as! String

println(content) // prints the content of data.txt
*/
