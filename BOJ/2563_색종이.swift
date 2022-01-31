let n = Int(readLine()!)!
var array = [[Int]](repeating: [Int](repeating: 0, count: 101), count: 101)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for i in input[0]..<input[0] + 10 {
        for j in input[1]..<input[1] + 10 {
            array[i][j] = 1
        }
    }
}

var count = 0

for i in 1...100 {
    for j in 1...100 {
        if array[i][j] == 1 {
            count += 1
        }
    }
}
print(count)
