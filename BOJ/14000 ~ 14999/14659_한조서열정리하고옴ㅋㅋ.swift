let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map{ Int($0)! }
var max = 0
for i in 0..<n {
    var count = 0
    for j in i + 1..<n {
        if input[i] > input[j] {
            count += 1
        } else {
            break
        }
        if count > max {
            max = count
        }
    }
}
print(max)
