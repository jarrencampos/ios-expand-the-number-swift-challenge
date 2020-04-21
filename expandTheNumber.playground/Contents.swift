import Foundation

func expandTheNumber(_ number: Int) -> [Int] {
    let ones = number % 10
    let tens = (number / 10) % 10
    let hundreds = (number / 100) % 10
    let thousands = (number / 1000) % 10
    let sum = ones + tens + hundreds + thousands
//    print(thousands, hundreds, tens, ones)
    
    var numberArray: [Int] = []
    
    if thousands > 0 {
        numberArray.append(Int("\(thousands)000")!)
    }
    if hundreds > 0 {
        numberArray.append(Int("\(hundreds)00")!)
    }
    if tens >= 0 {
        numberArray.append(Int("\(tens)0")!)
    }
    if ones >= 0 {
        numberArray.append(ones)
    }
    if sum == 0 {
        numberArray.removeAll()
        numberArray.append(Int(0))
    }

    print(numberArray)
    return numberArray
}

expandTheNumber(199)  // [100, 90, 9]
expandTheNumber(100)  // [100, 0, 0]
expandTheNumber(0)    // [0]
expandTheNumber(562)  // [500, 60, 2]
expandTheNumber(5280) // [5000, 200, 80, 0]
expandTheNumber(560)  // [500, 60, 0]
