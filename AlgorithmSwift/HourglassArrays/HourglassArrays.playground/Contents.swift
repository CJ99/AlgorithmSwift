//: Playground - noun: a place where people can play

import Foundation

var rows = 6, cols = 6
var dimensional = Array<Array<String>>()

for col in 0..<6 {
    let numStrings = "1 2 3 4 5 6"
    dimensional.append(Array(numStrings.components(separatedBy: " ")))
}

var n = 0
var count = 4
var sum = [Int]()

while (count > n) {
    var m = 0
    while (count > m) {
        sum.append (Int(dimensional[n][m])! + Int(dimensional[n][m+1])! + Int(dimensional[n][m+2])!
            + Int(dimensional[n+1][m+1])!
            + Int(dimensional[n+2][m+0])! + Int(dimensional[n+2][m+1])! + Int(dimensional[n+2][m+2])!)
        
        m += 1
    }
    n += 1
    
}



print(sum.max()!)
