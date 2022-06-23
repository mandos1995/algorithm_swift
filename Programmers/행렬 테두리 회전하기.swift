import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var matrix = [[Int]](repeating: [Int](repeating: 0, count: columns), count: rows)
    var i = 1
    var answer: [Int] = []
    for y in 0..<rows {
        for x in 0..<columns {
            matrix[y][x] = i
            i += 1
        }
    }
    
    func rotateMatrix(_ y1: Int, _ x1: Int, _ y2: Int, _ x2: Int) {
        let temp = matrix[y1][x1]
        var ans = matrix[y1][x1]
        // 왼쪽
        for y in y1..<y2 {
            matrix[y][x1] = matrix[y + 1][x1]
            ans = min(ans, matrix[y + 1][x1])
        }
        // 아래
        for x in x1..<x2 {
            matrix[y2][x] = matrix[y2][x + 1]
            ans = min(ans, matrix[y2][x + 1])
        }
        // 오른쪽
        for y in (y1 + 1...y2).reversed() {
            matrix[y][x2] = matrix[y - 1][x2]
            ans = min(ans, matrix[y - 1][x2])
        }
        // 위
        for x in (x1 + 1...x2).reversed() {
            matrix[y1][x] = matrix[y1][x - 1]
            ans = min(ans, matrix[y1][x - 1])
        }
        matrix[y1][x1 + 1] = temp
        answer.append(ans)
    }
    
    for q in queries {
        rotateMatrix(q[0] - 1, q[1] - 1, q[2] - 1, q[3] - 1)
    }
    
    return answer
}
