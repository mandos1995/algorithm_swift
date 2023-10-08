let s = readLine()!.map { $0 }
var count = 0
for i in 0..<s.count - 3 {
    if String(s[i...i + 3]) == "DKSH" {
        count += 1
    }
}
print(count)
