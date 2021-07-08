let t = Int(readLine()!)!
for _ in 0 ..< t {
    let _ = readLine()!
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let sum = input.reduce(0, +)
    print(sum)
}
