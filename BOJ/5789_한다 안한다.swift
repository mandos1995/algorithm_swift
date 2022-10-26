func solution() {
    let input = readLine()!.map { $0 }
    let mid = input.count / 2
    input[mid - 1] == input[mid] ? print("Do-it") : print("Do-it-Not")
}

let n = Int(readLine()!)!
for _ in 0..<n {
    solution()
}
