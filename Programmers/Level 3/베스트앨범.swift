import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var answer: [Int] = []
    let playCount = Dictionary(genres.enumerated().map { ($0.element, plays[$0.offset]) }, uniquingKeysWith: +)
    var genresDict: [String: [(Int, Int)]] = [:]
    for (index, genre) in genres.enumerated() {
        genresDict[genre, default: []].append((plays[index], index))
    }
    let topGenres = playCount.sorted { $0.value > $1.value }
    
    for i in 0..<topGenres.count {
        let best = genresDict[topGenres[i].key]!.sorted { $0.0 > $1.0 }
        for j in 0..<min(2, best.count) {
            answer.append(best[j].1)
        }
    }
    return answer
}
