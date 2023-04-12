import Foundation
let n = Int(readLine()!)!
let input = readLine()!.split(separator: "*").map { String($0) }
let start = input[0], end = input[1]
let pattern = "^\(start).*\(end)$"
let regex = try! NSRegularExpression(pattern: pattern)

for _ in 0..<n {
    let word = readLine()!

    regex.firstMatch(in: word, options: [], range: NSRange(location: 0, length: word.count)) != nil ? print("DA") : print("NE")
}
