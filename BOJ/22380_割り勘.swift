while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [0, 0] { break }
    let n = input[0], m = input[1]
    let fee = m / n
    let fees = readLine()!.split(separator: " ").map { Int($0)! }
    var answer = 0
    fees.forEach { answer += min(fee, $0) }
    print(answer)
}
