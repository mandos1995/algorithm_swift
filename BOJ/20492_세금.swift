import Foundation
let input = Int(readLine()!)!
let pay1 = (input / 100) * 78
let pay2 = input - (((input / 100) * 20) / 100) * 22
print(pay1, pay2)
