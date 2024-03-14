let a = readLine()!.map { $0 }
let b = readLine()!.map { $0 }
var diff = 0
for i in 0..<4 {
    if a[i] != b[i] { diff += 1 }
}
var answer = 1
for _ in 0..<diff {
    answer *= 2
}
print(answer)
