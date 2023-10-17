let input = readLine()!.split(separator: " ").map { Int($0)! }
var x = input[0]
let n = input[1]
for _ in 0..<n {
    if x % 2 == 0 { x = (x / 2) ^ 6 }
    else { x = (x * 2) ^ 6 }
}
print(x)
