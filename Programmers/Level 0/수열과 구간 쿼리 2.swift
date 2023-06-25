import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    return queries.map { query in
        let start = query[0]
        let end = query[1]
        let target = query[2]
        return arr[start...end].filter { $0 > target }.sorted().first ?? -1
    }
}
