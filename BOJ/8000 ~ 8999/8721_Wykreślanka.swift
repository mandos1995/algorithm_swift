let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var value = 1
var answer = 0
for arr in array {
    if arr == value {
        value += 1
        continue
    }
    answer += 1
}
print(answer)
