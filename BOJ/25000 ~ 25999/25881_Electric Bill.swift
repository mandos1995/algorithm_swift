let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let t = Int(readLine()!)!

for _ in 0..<t {
    solution()
}

func solution() {
    let k = Int(readLine()!)!
    print(k, min(k, 1000) * n + max(0, k - 1000) * m)
}
