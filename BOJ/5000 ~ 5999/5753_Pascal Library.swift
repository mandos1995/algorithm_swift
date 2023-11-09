while let input = readLine()?.split(separator: " ").map({ Int($0)! }), input != [0, 0] {
    let n = input[0], d = input[1]
    var graph: [[Int]] = []
    for _ in 0..<d {
        graph.append(readLine()!.split(separator: " ").map { Int($0)! })
    }
    var isAll = false
    for i in 0..<n {
        isAll = true
        for j in 0..<d {
            if graph[j][i] == 0 {
                isAll = false
                break
            }
        }
        if isAll {
            isAll = true
            break
        }
    }
    print(isAll ? "yes" : "no")
}
