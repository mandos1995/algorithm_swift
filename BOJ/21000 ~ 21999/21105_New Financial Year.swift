func solution() {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let p = input[0], c = input[1]
    print(100 * p / (100 + c))
}

let n = Int(readLine()!)!

for _ in 0..<n {
    solution()
}
