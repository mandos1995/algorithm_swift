let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], b = input[1]
let mod = 1000
var matrix: [[Int]] = []

for _ in 0..<n {
    matrix.append(readLine()!.split(separator: " ").map { Int($0)! % 1000 })
}

func multiplyMatrix(matrix1: [[Int]], matrix2: [[Int]]) -> [[Int]] {
    var result = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    for i in 0..<n {
        for j in 0..<n {
            for k in 0..<n {
                result[i][j] += matrix1[i][k] * matrix2[k][j]
                result[i][j] %= mod
            }
        }
    }
    return result
}

func power(mrx: [[Int]], n: Int) -> [[Int]] {
    if n == 1 {
        return matrix
    }
    if n % 2 == 1 {
        return multiplyMatrix(matrix1: power(mrx: mrx, n: n - 1), matrix2: matrix)
    }
    let half = power(mrx: mrx, n: n / 2)
    return multiplyMatrix(matrix1: half, matrix2: half)
}

power(mrx: matrix, n: b).forEach {
    $0.forEach {
        print($0, terminator: " ")
    }
    print()
}
