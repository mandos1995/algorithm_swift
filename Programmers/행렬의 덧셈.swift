func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]](repeating: [Int](repeating: 0, count: arr1[0].count), count: arr1.count)
    for i in 0..<arr1.count {
        for j in 0..<arr1[0].count {
            result[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return result
}
