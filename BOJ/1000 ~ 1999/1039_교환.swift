let input = readLine()!.split(separator: " ").map { Int($0)! }
var n = String(input[0]).map { Int(String($0))! }, k = input[1]

if k == 0 {
    print(input[0])
} else if n.count == 2 && n[1] == 0 {
    print(-1)
} else if n.count == 1 {
    print(-1)
} else {
    var queue = [(n, 0)]
    var index = 0
    var answer = 0
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: 1_000_001), count: k + 1)
    
    while index < queue.count {
        
        var num = queue[index].0
        let d = queue[index].1
        
        if d > k - 1 {
            break
        }
        for i in 0..<num.count - 1 {
            for j in i + 1..<num.count {
                if i == 0 && num[j] == 0 {
                    continue
                }
                num.swapAt(i, j)
                if !visited[d][Int(num.map { String($0) }.reduce("", +))!] {
                    visited[d][Int(num.map { String($0) }.reduce("", +))!] = true
                    queue.append((num, d + 1))
                    if d == k - 1 {
                        answer = max(Int(num.map { String($0) }.reduce("", +))!, answer)
                    }
                }
                num.swapAt(i, j)
            }
        }
        index += 1
    }
    print(answer)
}
