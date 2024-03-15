import Foundation

let t = Int(readLine()!)!
for _ in 0..<t { solution() }
func solution() {
    let id = readLine()!.map { Int(String($0))! }
    let sum = id.reduce(0, +)
    let lastSum = id[10] * 1000 + id[11] * 100 + id[12] * 10
    let idKey = sum + lastSum < 1000 ? sum + lastSum + 1000 : sum + lastSum
    var answer = String(format: "%4d", idKey)
    if answer.count > 4 { answer.removeFirst() }
    print(answer)
}
