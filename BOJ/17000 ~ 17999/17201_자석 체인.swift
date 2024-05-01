let n = Int(readLine()!)!
let s = readLine()!.map { $0 }
var count = 0
for i in 0..<s.count - 1 {
    if s[i] == s[i + 1] {
        count += 1
        break
    }
}

print(count == 0 ? "Yes" : "No")
