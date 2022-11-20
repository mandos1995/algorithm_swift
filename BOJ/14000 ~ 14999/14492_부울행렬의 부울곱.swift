let n = Int(readLine()!)!
var a = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var b = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var c = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
var count = 0

for i in 0..<n {
    a[i] = readLine()!.split(separator: " ").map { Int(String($0))!}
}

for i in 0..<n {
    b[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

for i in 0..<n {
    for j in 0..<n {
        for k in 0..<n {
            c[i][j] += (a[i][k] * b[k][j])
        }
        if c[i][j] > 0 {
            count += 1
        }
    }
}
print(count)
