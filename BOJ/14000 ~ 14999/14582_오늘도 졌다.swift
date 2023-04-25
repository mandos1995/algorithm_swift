let a = readLine()!.split(separator: " ").map { Int($0)! }
let b = readLine()!.split(separator: " ").map { Int($0)! }
var isReversal = false
var scores = [0, 0]
for i in 0..<9 {
    scores[0] += a[i]
    if scores[0] > scores[1] {
        isReversal = true
    }
    scores[1] += b[i]
}

print(isReversal ? "Yes" : "No")
