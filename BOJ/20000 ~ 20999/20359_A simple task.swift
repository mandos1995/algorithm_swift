let n = Int(readLine()!)!
var temp = n
var o = 1
var p = 0

while temp % 2 == 0 {
    p += 1
    temp /= 2
}

print(n / pow2(p), p)

func pow2(_ n: Int) -> Int {
    var answer = 1
    for _ in 0..<n {
        answer *= 2
    }
    return answer
}
