func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let k = input[0], n = input[1]
    print(k, (1...n).reduce(0, +) + n)
}

let t = Int(readLine()!)!

for _ in 0..<t {
    solution()
}
