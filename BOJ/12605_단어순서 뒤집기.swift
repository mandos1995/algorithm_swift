let n = Int(readLine()!)!
for i in 0..<n {
    var input = readLine()!.split(separator: " ").map { String($0) }
    input.reverse()
    print("Case #\(i + 1): ",terminator: "")
    for i in 0..<input.count {
        print(input[i],terminator: " ")
    }
    print()
}
