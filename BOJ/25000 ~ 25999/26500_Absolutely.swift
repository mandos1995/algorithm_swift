import Foundation

for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let a = input[0], b = input[1]
    print(String(format: "%.1f", abs(a-b)))
}
