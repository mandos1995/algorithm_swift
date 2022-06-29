import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var dict: [String: Int] = [:]
    var combi: [Character] = []
    var visited = [Bool](repeating: false, count: orders.count + 1)
    func combination(_ order: [Character], _ index: Int, _ k: Int, _ n: Int, _ end: Int) {
        if k == end {
            if dict[String(combi)] == nil {
                dict[String(combi)] = 1
            } else {
                dict[String(combi)]! += 1
            }
            return
        }
        
        for i in index..<n {
            if !visited[i] {
                visited[i] = true
                combi.append(order[i])
                combination(order, i + 1, k, n, end + 1)
                visited[i] = false
                combi.removeLast()
            }
        }
        
    }
    for order in orders {
        for i in 2...order.count {
            visited = [Bool](repeating: false, count: orders.count + 1)
            combination(order.map { $0 }.sorted { $0 < $1 }, 0, i, order.count, 0)
        }
    }

    let filter = dict.filter { $0.value >= 2 }
    var answerDict: [Int: [(String, Int)]] = [:]
    
    for f in filter {
        if answerDict[f.key.count] == nil {
            answerDict[f.key.count] = [(f.key, f.value)]
        } else {
            answerDict[f.key.count]!.append((f.key, f.value))
        }
    }
    var answer: [String] = []

    for i in course {
        if answerDict[i] == nil {
            continue
        }
        var maxValue = 0
        for a in answerDict[i]! {
            maxValue = max(maxValue, a.1)
        }
        let maxValues = answerDict[i]!.filter { $0.1 == maxValue }
        for m in maxValues {
            answer.append(m.0)
        }
    }
    return answer.sorted(by: <)
}
