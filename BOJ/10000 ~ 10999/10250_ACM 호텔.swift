import Foundation
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let h = input[0], w = input[1], n = input[2]
    let floor = n % h == 0 ? h : n % h
    let room = n % h == 0 ? n / h : n / h + 1
    print("\(floor)\(String(format: "%02d", room))")
}
