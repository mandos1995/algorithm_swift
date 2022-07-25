import Foundation
let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let num = Double(input[0])!
    let unit = input[1]
    switch unit {
    case "kg":
        let result = round(num * 2.2046 * 10000) / 10000
        print(String(format: "%.4f", result), "lb")
    case "l":
        let result = round(num * 0.2642 * 10000) / 10000
        print(String(format: "%.4f", result), "g")
    case "lb":
        let result = round(num * 0.4536 * 10000) / 10000
        print(String(format: "%.4f", result), "kg")
    case "g":
        let result = round(num * 3.7854 * 10000) / 10000
        print(String(format: "%.4f", result), "l")
    default:
        print()
    }
}
