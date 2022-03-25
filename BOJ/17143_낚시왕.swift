let input = readLine()!.split(separator: " ").map { Int($0)! }
let r = input[0], c = input[1], m = input[2]
var sharks: [(Int, Int, Int, Int, Int)] = []

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    sharks.append((input[0], input[1], input[2], input[3], input[4]))
}
var answer = 0
// 상어 움직이는 함수
func moveShark() {
    let dx = [0, 0, 0, 1, -1]
    let dy = [0, -1, 1, 0, 0]
    
    for (index, shark) in sharks.enumerated() {
        var y = shark.0
        var x = shark.1
        var s = shark.2
        var d = shark.3
        let z = shark.4

        if d == 1 || d == 2 {
            s %= (r - 1) * 2
            for _ in 0..<s{
                if y == 1 && d == 1 {
                    d = 2
                }
                else if y == r && d == 2 {
                    d = 1
                }
                y += dy[d]
            }
        } else {
            s %= (c - 1) * 2
            for _ in 0..<s {
                if x == 1 && d == 4 {
                    d = 3
                }
                else if x == c && d == 3 {
                    d = 4
                }
                x += dx[d]
            }
        }
        sharks[index] = (y, x, s, d, z)
    }
}

// 상어 잡는 함수
func huntingShark(x: Int) {
mainloop: for y in 1...r {
        for shark in sharks {
            if shark.0 == y && shark.1 == x {
                answer += shark.4
                let idx = sharks.firstIndex {
                    $0 == shark
                }
                sharks.remove(at: idx!)
                break mainloop
            }
        }
    }
}
// 상어가 같은 위치에 있는지 확인하는 함수
func isEqualCoord() {
    var graph = [[(Int, Int, Int, Int, Int)]](repeating: [(Int, Int, Int, Int, Int)](repeating: (0, 0, 0, 0, 0), count: c + 1), count: r + 1)
    var removeIdx = Set<Int>()
    for (index, shark) in sharks.enumerated() {
        if graph[shark.0][shark.1] == (0, 0, 0, 0, 0) {
            graph[shark.0][shark.1] = shark
        } else {
            if graph[shark.0][shark.1].4 > shark.4 {
                removeIdx.insert(index)
            } else {
                let idx = sharks.firstIndex {
                    $0 == graph[shark.0][shark.1]
                }
                graph[shark.0][shark.1] = shark
                removeIdx.insert(idx!)
            }
        }
    }
    removeIdx.forEach {
        sharks[$0] = (0, 0, 0, 0, 0)
    }
    sharks = sharks.filter { $0 != (0, 0, 0, 0, 0)}
}

if m == 0 {
    print(0)
} else {
    for i in 1...c {
        huntingShark(x: i)
        moveShark()
        if sharks.count > 1 {
            isEqualCoord()
        }
    }
    print(answer)
}
