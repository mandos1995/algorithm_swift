let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let n = Int(input[0]), d = input[1], a = input[2], b = input[3], f = input[4]
    print(n, (d / (a + b)) * f)
}
