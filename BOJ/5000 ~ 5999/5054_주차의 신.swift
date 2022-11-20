let t = Int(readLine()!)!
for _ in 0..<t {
    solution()
}

func solution() {
    let n = Int(readLine()!)!
    let distance = readLine()!.split(separator: " ").map { Int($0)! }
    let avg = distance.reduce(0, +) / n
    let answer = (avg - distance.min()!) + (distance.max()! - avg) + (distance.max()! - distance.min()!)
    print(answer)
}
