import Foundation
let num = Int(readLine()!)!
for _ in 0..<num{
    var sum = 0.0
    var count = 0
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    for i in 1..<input.count{
        sum += input[i]
    }
    for i in 1..<input.count{
        if input[i] > Double(sum)/Double(input.count - 1) {
            count += 1
        }
    }
    print(String(format: "%.3f", (Double(count)/Double(input.count - 1) * 100)) + "%")
}
