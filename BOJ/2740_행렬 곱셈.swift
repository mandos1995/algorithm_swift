let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var matrixA = [[Int]]()
var matrixB = [[Int]]()

for _ in 0..<input[0] {
    matrixA.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}
let input2 = readLine()!.split(separator: " ").map { Int(String($0))! }
for _ in 0..<input2[0] {
    matrixB.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}
var result = [[Int]](repeating: [Int](repeating: 0, count: input2[1]), count: input[0])
var sum = 0
for i in 0..<input[0] {
    for j in 0..<input2[1] {
        for k in 0..<input2[0] {
            result[i][j] += matrixA[i][k] * matrixB[k][j]
        }
        
    }
}
for i in 0..<input[0] {
    for j in 0..<input2[1] {
        print(result[i][j],terminator: " ")
    }
    print()
}
