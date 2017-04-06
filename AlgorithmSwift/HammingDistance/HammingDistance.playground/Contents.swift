//: Playground - noun: a place where people can play

import Foundation

let input1 = 1
let input2 = 4

let distance = hammingDistance(input1, input2)

print(distance)

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    let c = x ^ y
    return String(c, radix: 2).characters.filter{ $0 == "1"}.count
}