let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let seat = readLine()!.split(separator: " ").map { Int($0)! }

var passenger = m
var answer = 0

while seat[passenger - 1] != m {
    answer += 1
    passenger = seat[passenger - 1]
}

print(answer == 0 ? 0 : answer + 1)
