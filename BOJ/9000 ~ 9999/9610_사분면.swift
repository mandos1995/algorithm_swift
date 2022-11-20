let t = Int(readLine()!)!
var q: [Int] = [Int](repeating: 0, count: 5)
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 0 || input[1] == 0 {
        q[0] += 1
    } else if input[0] > 0 && input[1] > 0 {
        q[1] += 1
    } else if input[0] < 0 && input[1] > 0 {
        q[2] += 1
    } else if input[0] < 0 && input[1] < 0 {
        q[3] += 1
    } else if input[0] > 0 && input[1] < 0 {
        q[4] += 1
    }
}
for i in 1...4 {
    print("Q\(i): \(q[i])")
}
print("AXIS: \(q[0])")
