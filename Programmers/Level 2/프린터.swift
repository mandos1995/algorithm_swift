import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue: [(Int, Int)] = []
    
    for (index, p) in priorities.enumerated() {
        queue.append((index, p))
    }
    var index = 0
    var answers: [(Int, Int)] = []
    var count = 0
    while count < priorities.count {
        let loc = queue[index].0
        let value = queue[index].1
        var maxValue = 0
        for i in index..<queue.count {
            maxValue = max(maxValue, queue[i].1)
        }
        print(maxValue, value)
        if maxValue == value {
            index += 1
            answers.append((loc, count))
            count += 1
            continue
        }
        queue.append((queue[index].0, queue[index].1))
        index += 1
    }
    var answer = 0
    for ans in answers {
        if ans.0 == location {
            answer = ans.1 + 1
            break
        }
    }
    return answer
}
