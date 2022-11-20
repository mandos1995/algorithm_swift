import Foundation

let pattern = "^[A-F]?A+F+C+[A-F]?$"
let regex = try! NSRegularExpression(pattern: pattern)

let n = Int(readLine()!)!

for _ in 0..<n {
    let word = readLine()!

    regex.firstMatch(in: word, options: [], range: NSRange(location: 0, length: word.count)) != nil ? print("Infected!") : print("Good")
}
