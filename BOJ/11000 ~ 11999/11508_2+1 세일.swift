let n = Int(readLine()!)!
var c: [Int] = []
var answer = 0
for _ in 0..<n {
    c.append(Int(readLine()!)!)
}
c.sort(by: <)

while !c.isEmpty {
    for i in 0..<3 {
        let value = c.popLast()
        answer += i < 2 ? value ?? 0 : 0
    }
}

print(answer)
