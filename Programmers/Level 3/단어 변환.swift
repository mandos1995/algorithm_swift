import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    var visited = Set<String>()
    var answer = bfs(begin: begin, target: target, words: words, visited: &visited, d: 0)
    return answer
}

func bfs(begin: String, target: String, words: [String], visited: inout Set<String>, d: Int) -> Int {
    var queue = [(begin, d)]
    var index = 0
    visited.insert(begin)
    while queue.count > index {
        let beginString = queue[index].0.map { String($0) }
        let d = queue[index].1
        
        if queue[index].0 == target {
            return d
        }
        
        for w in words {
            var count = 0
            let arrayWord = String(w).map { String($0) }
            for index in 0..<arrayWord.count {
                if arrayWord[index] != beginString[index] {
                    count += 1
                }
            }
            if count < 2 && !visited.contains(String(w)) {
                queue.append((String(w), d + 1))
                visited.insert(String(w))
            }
        }
        index += 1
        
    }
    return 0
}
