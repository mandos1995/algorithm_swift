import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya", "ye", "woo", "ma"]
    var visited = [Bool](repeating: false, count: 4)
    var setBabbling: Set<String> = []
    var answer = 0
    
    func combi(k: Int, babbles: [String]) {
        if babbles.count == k {
            setBabbling.insert(babbles.joined())
            return
        }
        
        for i in 0..<4 {
            if !visited[i] {
                visited[i] = true
                combi(k: k, babbles: babbles + [words[i]])
                visited[i] = false
            }
        }
    }
    
    for k in 1...4 {
        combi(k: k, babbles: [])
    }
    
    for b in babbling {
        if setBabbling.contains(b) {
            answer += 1
        }
    }
    
    return answer
}
