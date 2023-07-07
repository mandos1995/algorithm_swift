let h = readLine()!.map { $0 }
let n = readLine()!
let c = n.count

var answer = 0

for i in 0...h.count - c {
    if String(h[i..<i + c]) == n {
        answer += 1
    }
}

print(answer)
