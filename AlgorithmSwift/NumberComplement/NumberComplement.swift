//
//  NumberComplement.swift
//  AlgorithmSwift
//
//  Created by Kevin Fan on 2017-04-06.
//  Copyright © 2017 Kevin Fan. All rights reserved.
//

import Foundation

func findComplement(_ num: Int) -> Int {
    let initialBits: UInt32 = UInt32(num)
    var mask: UInt32 = ~0
    let c = String(initialBits, radix: 2).characters.count
    for _ in 1...c
    {
        mask = mask << 1
    }
    let answer = (~initialBits)&(~mask)
    return Int(answer)
}
