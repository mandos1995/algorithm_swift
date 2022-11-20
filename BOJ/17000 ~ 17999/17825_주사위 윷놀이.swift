var nextIdx = [Int](repeating: 0, count: 34)
var turn = [Int](repeating: 0, count: 34)
var score = [Int](repeating: 0, count: 34)
var visited = [Bool](repeating: false, count: 34)

func initMap() {
    for i in 0..<21 {
        nextIdx[i] = i + 1
    }
    nextIdx[21] = 21
    
    for i in 22..<27 {
        nextIdx[i] = i + 1
    }
    nextIdx[27] = 20
    nextIdx[28] = 29
    nextIdx[29] = 30
    nextIdx[30] = 25
    nextIdx[31] = 32
    nextIdx[32] = 25
    
    
    turn[5] = 22
    turn[10] = 31
    turn[15] = 28
    
    for i in 0..<21 {
        score[i] = i * 2
    }
    
    score[22] = 13
    score[23] = 16
    score[24] = 19
    score[25] = 25
    score[26] = 30
    score[27] = 35
    score[28] = 28
    score[29] = 27
    score[30] = 26
    score[31] = 22
    score[32] = 24
}
initMap()
let dice = readLine()!.split(separator: " ").map { Int($0)! }
var piece = [0, 0, 0, 0]
var answer = 0
func dfs(depth: Int, total: Int) {
    if depth == 10 {
        answer = max(answer, total)
        return
    }
    
    for i in 0..<4 {
        let prev = piece[i]
        var move = dice[depth]
        var cur = prev
        
        if turn[cur] > 0 {
            cur = turn[cur]
            move -= 1
        }
        
        while move != 0 {
            cur = nextIdx[cur]
            move -= 1
        }
        
        if cur != 21 && visited[cur] {
            continue
        }
        
        visited[prev] = false
        visited[cur] = true
        piece[i] = cur
        
        dfs(depth: depth + 1, total: total + score[cur])
        
        piece[i] = prev
        visited[prev] = true
        visited[cur] = false
    }
}

dfs(depth: 0, total: 0)
print(answer)
