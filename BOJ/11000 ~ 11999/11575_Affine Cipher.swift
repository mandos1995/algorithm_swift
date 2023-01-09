func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    let word = readLine()!
    var s = ""
    for w in word {
        let transform = String(UnicodeScalar((a * Int(w.asciiValue! - 65) + b) % 26 + 65)!)
        s += transform
    }
    print(s)
}

let n = Int(readLine()!)!
for _ in 0..<n { solution() }
