import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = [[Int]](repeating: [Int](repeating: 0, count: arr2[0].count), count: arr1.count)
    for y in 0..<arr1.count {
        for x in 0..<arr2[0].count {
            for z in 0..<arr1[0].count {
                answer[y][x] += arr1[y][z] * arr2[z][x]
            }
        }
    }
    return answer
}
