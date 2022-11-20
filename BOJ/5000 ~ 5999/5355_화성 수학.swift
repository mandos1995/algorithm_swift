import Foundation
let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    var num = Double(input[0])!
    for i in 1..<input.count {
        switch input[i] {
        case "@":
            num = num * 3
        case "%":
            num = num + 5
        case "#":
            num = num - 7
        default:
            print("없는 연산자")
        }
    }
    print(String(format: "%.2f", num))
}
