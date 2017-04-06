//
//  HammingDistance.swift
//  AlgorithmSwift
//
//  Created by Kevin Fan on 2017-04-05.
//  Copyright © 2017 Kevin Fan. All rights reserved.
//

import Foundation

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    let c = x ^ y
    return String(c, radix: 2).characters.filter{ $0 == "1"}.count
}



