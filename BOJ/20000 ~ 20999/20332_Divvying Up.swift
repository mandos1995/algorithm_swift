let n = Int(readLine()!)!
let score = readLine()!.split(separator: " ").map { Int($0)! }
score.reduce(0, +) % 3 == 0 ? print("yes") : print("no")
