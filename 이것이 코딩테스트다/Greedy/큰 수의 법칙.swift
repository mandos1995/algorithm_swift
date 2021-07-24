let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var m = input[1]
let k = input[2]
var data = readLine()!.split(separator: " ").map { Int($0)! }
data.sort(by: >)

let first = data[0] // 가장 큰 수
let second = data[1] // 두 번째로 큰 수

// 가장 큰 수가 더해지는 횟수 계산
var count = (m / (k + 1)) * k
count += m % (k + 1)

var result = 0
result += count * first // 가장 큰 수 더하기
result += (m - count) * second // 두 번째로 큰 수 더하기

print(result)
