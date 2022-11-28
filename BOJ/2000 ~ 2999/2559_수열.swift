let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }
var sum = array[0..<k].reduce(0, +)
var answer = sum

for i in 0..<array.count - k {
    sum -= array[i]
    sum += array[i + k]
    answer = max(answer, sum)
}

print(answer)
