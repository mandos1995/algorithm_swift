let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0.reversed()) }
    for i in 0..<input.count {
        print(input[i], terminator: " ")
    }
}
