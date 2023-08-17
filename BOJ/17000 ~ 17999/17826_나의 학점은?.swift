let scores = readLine()!.split(separator: " ").map { Int($0)! }
let score = Int(readLine()!)!
let rank = scores.firstIndex(of: score)! + 1
switch rank {
case 1...5: print("A+")
case 6...15: print("A0")
case 16...30: print("B+")
case 31...35: print("B0")
case 36...45: print("C+")
case 46...48: print("C0")
case 49...50: print("F")
default: fatalError()
}
