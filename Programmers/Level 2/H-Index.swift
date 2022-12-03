import Foundation

func solution(_ citations:[Int]) -> Int {
    let n = citations.count
    let sortedCitations = citations.sorted { $0 < $1 }
    var answer = 0
    for i in 0..<n / 2 {
        let hIndex = n - i
        if sortedCitations[i] >= hIndex {
            answer = hIndex
            break
        }
    }
    return answer
}
