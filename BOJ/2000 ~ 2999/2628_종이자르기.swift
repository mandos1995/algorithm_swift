let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[1], y = input[0]
let n = Int(readLine()!)!

var row = [0, x]
var column = [0, y]

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let isRow = input[0] == 0, line = input[1]
    isRow ? row.append(line) : column.append(line)
}

row.sort()
column.sort()

var width: [Int] = []
var height: [Int] = []

for i in 1..<row.count {
    width.append(row[i] - row[i - 1])
}

for i in 1..<column.count {
    height.append(column[i] - column[i - 1])
}

print(width.max()! * height.max()!)
