let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], target = input[1], p = input[2]
var ranking = [Int](repeating: 0, count: n + 1)
for i in 0...n {
    ranking[i] = i + 1
}
if n > 0 {
    var array = readLine()!.split(separator: " ").map { Int($0)! }
    array.append(target)
    array.sort { $0 > $1 }
    for i in 0..<array.count - 1 {
        if array[i] == array[i + 1] {
            ranking[i + 1] = ranking[i]
        }
    }
    let targetIdx = array.lastIndex(of: target)!
    if targetIdx >= p {
        print(-1)
    } else {
        print(ranking[targetIdx])
    }
} else {
    print(1)
}
