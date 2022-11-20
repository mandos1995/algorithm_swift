let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }
let ryan = array.enumerated().filter { $0.element == 1 }.map { $0.offset }
var answer = 123_456_789
if ryan.count < k {
    print(-1)
} else {
    for i in 0...ryan.count - k {
        answer = min(answer, ryan[i + k - 1] - ryan[i] + 1)
    }
    print(answer)
}
