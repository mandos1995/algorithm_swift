let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let target = Int(readLine()!)!
var count = 0
for i in 0..<n {
    if input[i] == target {
        count += 1
    }
}
print(count)
