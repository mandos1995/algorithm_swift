import Foundation
let n = Int(readLine()!)!
print(String(repeating: "V", count: n / 5) + String(repeating: "I", count: n % 5))