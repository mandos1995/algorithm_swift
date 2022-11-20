let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0]
let m = input[1]
let k = input[2]
var result = 0
if m < k {
    result = n * m
} else {
    result = n * ((k - 1) + m / k)
}
print(result)
