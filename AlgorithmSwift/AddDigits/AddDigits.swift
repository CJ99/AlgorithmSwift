//
//  AddDigits.swift
//  AlgorithmSwift
//
//  Created by Kevin Fan on 2017-04-08.
//  Copyright © 2017 Kevin Fan. All rights reserved.
//

import Foundation

func AddDigits(_ input : String) -> Int {
    let result = input.characters.flatMap{
        Int(String($0))
        }.reduce(0, { x, y in x + y })
    
    if (result < 10 && result >= 0) {
        return result
    } else {
        return AddDigits(String(result))
    }
}
