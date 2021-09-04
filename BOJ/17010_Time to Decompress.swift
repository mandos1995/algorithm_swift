let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let num = Int(input[0])!
    let str = input[1]
    print(String(repeating: str, count: num))
}
