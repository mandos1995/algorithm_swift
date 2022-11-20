let input = readLine()!.split(separator: " ").map { Int($0)! }
var count = [Int](repeating: 0, count: 81)
for i in 1...input[0] {
    for j in 1...input[1] {
        for k in 1...input[2] {
            count[i + j + k] += 1
        }
    }
}
print(count.firstIndex(of: count.max()!)!)
