let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var count = 0
    let candy = readLine()!.split(separator: " ").map { Int($0)! }
    for i in 0..<input[0] {
        count += candy[i] / input[1]
    }
    print(count)
}
