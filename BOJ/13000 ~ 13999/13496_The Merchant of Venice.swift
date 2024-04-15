let t = Int(readLine()!)!
for i in 1...t {
    print("Data Set \(i):")
    solution()
    print()
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0], s = input[1], d = input[2]
    var answer = 0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let a = input[0], b = input[1]
        answer += s * d >= a ? b : 0
    }
    print(answer)
}
