let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] % input[1] == 0 {
        print(input[0] / input[1])
    } else {
        print(input[0] / input[1] + 1)
    }
}
