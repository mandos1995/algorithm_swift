import Foundation

let num = readLine()!
var reverseNumber = ""
for n in num {
    let n = Int(String(n))!
    switch n {
    case 0, 1, 2, 5, 8:
        reverseNumber += "\(n)"
    case 6:
        reverseNumber += "9"
    case 9:
        reverseNumber += "6"
    default:
        reverseNumber += "X"
    }
}

reverseNumber = String(reverseNumber.reversed())

func isPrimeNumber(number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<Int(sqrt(Double(number)) + 1) {
        if number % i == 0 {
            return false
        }
    }
    return true
}

if let number = Int(reverseNumber) {
    if isPrimeNumber(number: number) && isPrimeNumber(number: Int(num)!) {
        print("yes")
    } else{
        print("no")
    }
} else {
    print("no")
}
