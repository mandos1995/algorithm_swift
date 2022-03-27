let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1]
var graph: [[Int]] = []

for _ in 0..<n {
    graph.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var answer = 0
var isPassWay = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
var slopeMap = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
for y in 0..<n {
    var step = 0
    var num = graph[y][0]
    var isPass = true
    var slope = [Bool](repeating: false, count: n)
    for x in 0..<n {
        if num == graph[y][x] {
            step += 1
            continue
        } else if abs(num - graph[y][x]) > 1 {
            isPass = false
            break
        } else if num + 1 == graph[y][x] {
            if x - l > -1 {
                for dx in x - l..<x {
                    if slope[dx] {
                        isPass = false
                        break
                    }
                }
            }
            if slope[x] {
                isPass = false
                break
            }
            
            if step >= l {
                for dx in x - l..<x {
                    slope[dx] = true
                }
                
                num = graph[y][x]
                step = 1
                continue
            } else {
                isPass = false
                break
            }
        }
        else {
            if x + l - 1 < n {
                let check = graph[y][x]
                num = graph[y][x]
                for step in x..<x + l {
                    if graph[y][step] == check {
                        slope[step] = true
                        continue
                    } else {
                        isPass = false
                        break
                    }
                }
            } else {
                isPass = false
                break
            }
        }
    }
    if isPass {
        for x in 0..<n {
            isPassWay[y][x] = true
        }
    }
    answer = isPass == true ? answer + 1 : answer
}

for x in 0..<n {
    var step = 0
    var num = graph[0][x]
    var isPass = true
    var slope = [Bool](repeating: false, count: n)
    for y in 0..<n {
        if num == graph[y][x] {
            step += 1
            continue
        } else if abs(num - graph[y][x]) > 1 {
            isPass = false
            break
        } else if num + 1 == graph[y][x] {
            if y - l > -1 {
                for dy in y - l..<y {
                    if slope[dy] {
                        isPass = false
                        break
                    }
                }
            }
            
            if slope[y] {
                isPass = false
                break
            }
            
            if step >= l {
                for dy in y - l..<y {
                    slope[dy] = true
                }
                num = graph[y][x]
                step = 1
                continue
            } else {
                isPass = false
                break
            }
        } else {
            if y + l - 1 < n {
                let check = graph[y][x]
                num = graph[y][x]
                for step in y..<y + l{
                    if graph[step][x] == check {
                        slope[step] = true
                        continue
                    } else {
                        isPass = false
                        break
                    }
                }
            } else {
                isPass = false
                break
            }
        }
    }
    if isPass {
        for y in 0..<n {
            isPassWay[y][x] = true
        }
    }
    answer = isPass == true ? answer + 1 : answer
}
print(answer)
