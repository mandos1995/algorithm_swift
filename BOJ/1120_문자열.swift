let input = readLine()!.split(separator: " ").map { $0.map { $0 } }
let str1 = input[0], str2 = input[1]
let INF = 1_000_000_000
var answer = INF
for i in 0..<str2.count - str1.count + 1 {
    var count = 0
    for j in 0..<str1.count {
        if str1[j] != str2[i + j] {
            count += 1
        }
    }
    answer = min(count, answer)
}

print(answer)
