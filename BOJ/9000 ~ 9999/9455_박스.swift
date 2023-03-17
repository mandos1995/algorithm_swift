let t = Int(readLine()!)!

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], m = input[1]
    var grid: [[Int]] = []
    var answer = 0
    
    for _ in 0..<n {
        grid.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    
    var columns: [[Int]] = []
    for x in 0..<m {
        var column: [Int] = []
        for y in 0..<n {
            column.append(grid[y][x])
        }
        columns.append(column)
    }
    
    for column in columns {
        var floor = 0
        var count = 0
        for box in column.reversed() {
            if box == 1 {
                answer += count - floor
                floor += 1
            }
            count += 1
        }
    }
    print(answer)
}

for _ in 0..<t { solution() }
