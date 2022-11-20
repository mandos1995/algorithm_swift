let n = Int(readLine()!)!
let fiboMatrix = [[1, 1], [1, 0]]
let mod = 1_000_000_007
func multiplyMatrix(matrix1: [[Int]], matrix2: [[Int]]) -> [[Int]] {
    var resultMatrix = [[0, 0], [0, 0]]
    for i in 0..<2 {
        for j in 0..<2 {
            for k in 0..<2 {
                resultMatrix[i][j] += matrix1[i][k] * matrix2[k][j]
                resultMatrix[i][j] %= mod
            }
        }
    }
    return resultMatrix
}

func power(matrix: [[Int]], n: Int) -> [[Int]] {
    if n == 1 {
        return matrix.map { $0.map { $0 % mod }}
    }
    if n % 2 == 1 {
        return multiplyMatrix(matrix1: power(matrix: matrix, n: n - 1), matrix2: fiboMatrix)
    }
    
    let half = power(matrix: matrix, n: n / 2)
    return multiplyMatrix(matrix1: half, matrix2: half)
}

print(power(matrix: fiboMatrix, n: n)[0][1])
