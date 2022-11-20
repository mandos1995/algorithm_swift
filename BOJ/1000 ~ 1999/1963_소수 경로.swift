func getPriceNumber() -> [Int] {
    var isPrice = [Bool](repeating: true, count: 10000)
    var answer: [Int] = []
    for i in 2..<10000 {
        var j = 2
        while i * j < 10000 {
            isPrice[i * j] = false
            j += 1
        }
    }
    for i in 1000...9999 {
        if isPrice[i] {
            answer.append(i)
        }
    }
    return answer
}

let n = Int(readLine()!)!
let primeNumber = Set(getPriceNumber())
var answer = 0
var isPossible = false
func bfs(n: Int, d: Int, target: Int) {
    var visited = [Bool](repeating: false, count: 10000)
    var queue = [(n, d)]
    var index = 0
    visited[n] = true
    while index < queue.count {
        let nums = queue[index].0
        let d = queue[index].1
        let stringNumber = "\(nums)".map { String($0) }
        if nums == target {
            answer = d
            isPossible = true
            break
        }
        
        for i in 0..<4 {
            for j in 0...9 {
                var transNumber = stringNumber
                transNumber[i] = "\(j)"
                let newNumber = Int(transNumber.joined(separator: ""))!
                if newNumber < 1000 {
                    continue
                }
                if !visited[newNumber] && primeNumber.contains(newNumber) {
                    visited[newNumber] = true
                    queue.append((newNumber, d + 1))
                }
            }
        }
        index += 1
        
    }
    
}

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let originNumber = input[0], transNumber = input[1]
    isPossible = false
    bfs(n: originNumber, d: 0, target: transNumber)
    isPossible ? print(answer) : print("Impossible")
}
