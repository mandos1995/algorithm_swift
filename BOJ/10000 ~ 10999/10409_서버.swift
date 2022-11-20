let input = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
var work = 0
let serve = readLine()!.split(separator: " ").map { Int($0)! }
for i in 0..<input[0] {
    work += serve[i]
    if work <= input[1] {
        count += 1
    }
    if work > input[1] {
        break
    }
}
print(count)
