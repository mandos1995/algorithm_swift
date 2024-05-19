let t = Int(readLine()!)!
var answer = 0
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    answer = max(answer, a * b)
}
print(answer)
