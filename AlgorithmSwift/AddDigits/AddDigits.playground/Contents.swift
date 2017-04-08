
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

AddDigits("83")
AddDigits("98")
AddDigits("846")