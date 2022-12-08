let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]
var fee = [Int](repeating: 0, count: 101)
for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0], end = input[1]
    for park in start..<end {
        fee[park] += 1
    }
}
var answer = 0
for fee in fee.filter({ $0 != 0 }) {
    switch fee {
    case 1:
        answer += a
    case 2:
        answer += 2 * b
    case 3:
        answer += 3 * c
    default:
        fatalError()
    }
}
print(answer)
