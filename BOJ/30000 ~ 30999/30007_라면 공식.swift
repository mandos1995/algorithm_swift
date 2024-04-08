let t = Int(readLine()!)!

for _ in 0..<t {
    solution()
}

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1], x = input[2]
    print(a * (x - 1) + b)
}
