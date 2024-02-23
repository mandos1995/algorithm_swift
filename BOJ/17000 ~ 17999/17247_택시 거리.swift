let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var array: [[Int]] = []
for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { Int($0)! })
}
var x1 = 0, y1 = 0
var isFirst = true
var answer = 0
for y in 0..<n {
    for x in 0..<m {
        if array[y][x] == 1 {
            if isFirst {
                x1 = x
                y1 = y
                isFirst = false
            } else {
                answer = abs(y - y1) + abs(x - x1)
            }
        }
    }
}

print(answer)
