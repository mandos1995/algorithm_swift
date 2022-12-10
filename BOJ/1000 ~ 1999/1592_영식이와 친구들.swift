let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], l = input[2]
var player = [Int](repeating: 0, count: n)
var answer = 0
var i = 0

while player[i] < m - 1 {
    player[i] += 1
    answer += 1
    i = player[i] % 2 == 1 ? (i + l) % n : (i - l) % n
    i = i < 0 ? i + n : i
}

print(answer)
