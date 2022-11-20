let n = Int(readLine()!)!
for _ in 0..<n {
    let string = readLine()!
    let first = string.index(string.startIndex, offsetBy: 0)
    let last = string.index(string.endIndex, offsetBy: -1)
    print("\(string[first])\(string[last])")
}
