let score = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0
for _ in 0..<Int(readLine()!)! {
    var sum = 0
    for _ in 0..<3 {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        for i in 0..<3 {
            sum += input[i] * score[i]
        }
    }
    result = max(sum, result)
}
print(result)
