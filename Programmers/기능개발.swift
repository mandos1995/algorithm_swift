import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var answer: [Int] = []
    var index = 0
    let n = progresses.count
    var queue = progresses
    var days = [Int](repeating: 0, count: n)
    
    while index < n {
        if queue[index] >= 100 {
            index += 1
            continue
        }
        for i in index..<n {
            days[i] += 1
            queue[i] += speeds[i]
        }
    }
    var prev = days[0]
    var count = 1
    for i in 1..<n {
        if prev == days[i] {
            count += 1
        } else {
            answer.append(count)
            count = 1
        }
        prev = days[i]
    }
    answer.append(count)
    return answer
}
