func pow2(n: Int) -> Int {
    var result = 1
    for _ in 0..<n {
        result = 2 * result
    }
    return result
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = input[0], r = input[1], c = input[2]
var result = 0
while n != 0  {
    n -= 1
    // 1사분면인 경우
    if r < pow2(n: n) && c < pow2(n: n) {
        result += 0
    } else if r < pow2(n: n) && c >= pow2(n: n) { // 2사분면
        result += pow2(n: n) * pow2(n: n) * 1
        c -= pow2(n: n)
    } else if r >= pow2(n: n) && c < pow2(n: n) { // 3사분면
        result += pow2(n: n) * pow2(n: n) * 2
        r -= pow2(n: n)
    } else { // 4사분면
        result += pow2(n: n) * pow2(n: n) * 3
        c -= pow2(n: n)
        r -= pow2(n: n)
    }
}

print(result)
