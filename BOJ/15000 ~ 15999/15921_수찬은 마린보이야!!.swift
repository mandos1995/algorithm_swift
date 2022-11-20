import Foundation
let n = Int(readLine()!)!
if n == 0 {
    print("divide by zero")
} else {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var sum = 0
    var value = 0.0
    for i in 0..<n{
        sum += input[i]
        value += Double(input[i]) * (1.0 / Double(n))
    }
    if value == 0.0 {
        print("divide by zero")
    } else{
        let mean = Double(sum) / Double(n)
        let result = round((Double(mean) / value) * 1000) / 1000
        print(String(format: "%.2f", result))
    }
}
