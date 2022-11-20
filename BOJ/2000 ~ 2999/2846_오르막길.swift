let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var answer = 0
var size = 0
for i in 0..<n - 1 {
    if array[i] < array[i + 1] {
        size += array[i + 1] - array[i]
    } else {
        answer = max(answer, size)
        size = 0
    }
}
answer = max(answer, size)
print(answer)
