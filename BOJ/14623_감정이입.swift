import Foundation
let binaryNum1 = readLine()!
let binaryNum2 = readLine()!
let decimalNum1 = Int(binaryNum1, radix: 2)!
let decimalNum2 = Int(binaryNum2, radix: 2)!
let multiply = decimalNum1 * decimalNum2
let result = String(multiply, radix: 2)
print(result)
