let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
var board: [[Character]] = []

for _ in 0..<n {
    board.append(readLine()!.map { $0 })
}


func makePrefixSum(color: Character) -> [[Int]] {
    var prefixSum = [[Int]](repeating: [Int](repeating: 0, count: m + 1), count: n + 1)
    var equalValue = 0
    for y in 0..<n {
        for x in 0..<m {
            if (y + x) % 2 == 0 {
                equalValue = board[y][x] == color ? 0 : 1
            } else {
                equalValue = board[y][x] != color ? 0 : 1
            }
            prefixSum[y + 1][x + 1] = prefixSum[y][x + 1] + prefixSum[y + 1][x] - prefixSum[y][x] + equalValue
        }
    }
    return prefixSum
}

func squareMinCount(_ prefixSum: [[Int]]) -> Int {
    var answer = Int.max
    for y in 1...(n - k + 1) {
        for x in 1...(m - k + 1) {
            let count = prefixSum[y + k - 1][x + k - 1] - prefixSum[y - 1][x + k - 1] - prefixSum[y + k - 1][x - 1] + prefixSum[y - 1][x - 1]
            answer = min(answer, count)
        }
    }
    return answer
}

print(min(squareMinCount(makePrefixSum(color: "B")), squareMinCount(makePrefixSum(color: "W"))))
