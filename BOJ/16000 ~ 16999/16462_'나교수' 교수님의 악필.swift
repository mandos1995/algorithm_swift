import Foundation

let set: Set<Character> = ["0", "6", "9"]
let n = Int(readLine()!)!
var total: Double = 0
for _ in 0..<n {
    total += min(Double(readLine()!.map { set.contains($0) ? "9" : "\($0)" }.joined())!, 100)
}
print(Int(round(total / Double(n))))
