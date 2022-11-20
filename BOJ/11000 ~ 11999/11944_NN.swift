let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let answer = String(repeating: "\(n)", count: n)
if answer.count > m {
    print(answer.map { String($0) }[0..<m].reduce("", +))
} else {
    print(answer)
}
