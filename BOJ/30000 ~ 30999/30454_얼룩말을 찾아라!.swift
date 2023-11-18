let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], l = input[1]
var dict: [Int: Int] = [:]
for _ in 0..<n {
    let str = readLine()!
    var isLine = false
    var answer = 0
    for s in str {
        if s == "1" && !isLine {
            answer += 1
        }
        isLine = s == "1"
    }
    dict[answer, default: 0] += 1
}

print(dict.keys.max()!, dict[dict.keys.max()!]!)