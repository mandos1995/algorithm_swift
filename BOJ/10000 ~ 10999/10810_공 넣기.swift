let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var basket = [Int](repeating: 0, count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0], end = input[1], num = input[2]
    for i in start...end {
        basket[i] = num
    }
}
basket[1...].forEach { print($0, terminator: " ")}
