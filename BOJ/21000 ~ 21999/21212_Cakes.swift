var answer = Int.max
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    answer = min(answer, b / a)
}
print(answer)
