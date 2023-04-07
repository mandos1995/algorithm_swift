let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var array = readLine()!.split(separator: " ").map { Int($0)! }
for i in 1..<n {
    array[i] += array[i - 1]
}

let mod = Dictionary(array.map { ($0 % m, 1) }, uniquingKeysWith: +)

var answer = mod[0, default: 0]

for value in mod.values {
    answer += value * (value - 1) / 2
}

print(answer)
