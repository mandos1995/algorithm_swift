import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let a = input[0], b = input[1]
    print("The height of the triangle is \(String(format: "%.2f",  2 * a / b)) units")
}
