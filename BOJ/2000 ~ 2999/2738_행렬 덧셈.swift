let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var matrixA = [[Int]]()
var matrixB = [[Int]]()
var result = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)

for _ in 0..<n {
    matrixA.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for _ in 0..<n {
    matrixB.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 0..<n {
    for j in 0..<m {
        result[i][j] = matrixA[i][j] + matrixB[i][j]
    }
}
for i in 0..<n {
    for j in 0..<m {
        print(result[i][j],terminator: " ")
    }
    print()
}
