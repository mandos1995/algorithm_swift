readLine()
let input = readLine()!.split(separator: " ").map { Int($0)! }
var sum = 0
var add = 1
for i in 0..<input.count {
    if input[i] == 1 {
        sum += add
        add += 1
    } else {
        add = 1
    }
}
print(sum)
