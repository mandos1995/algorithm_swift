func gcd(a: Int, b: Int) -> Int {
    let remain = a % b
    if remain == 0 {
        return b
    } else {
        return gcd(a: b, b: remain)
    }
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let m = input[0], n = input[1], x = input[2], y = input[3]
    let nums = m * n / gcd(a: m, b: n)
    var isContains = false
    var i = 0
    while x + i * m <= nums {
        let currentY = (x + i * m) - n * ((x + i * m) / n)
        if currentY == y || (y == n && currentY == 0){
            print(x + i * m)
            isContains = true
            break
        }
        i += 1
    }
    if isContains == false {
        print(-1)
    }
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
