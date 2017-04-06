//: Playground - noun: a place where people can play


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

findComplement(5)
findComplement(1)

