let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let n = Int(input[0])!
    var string = input[1]
    string.remove(at: string.index(string.startIndex, offsetBy: n - 1))
    print(string)
}
