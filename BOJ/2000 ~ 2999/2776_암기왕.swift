func solution() {
    _ = Int(readLine()!)!
    let nums: Set<Int> = Set(readLine()!.split(separator: " ").map { Int($0)! })
    _ = Int(readLine()!)!
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    for arr in arr {
        nums.contains(arr) ? print(1) : print(0)
    }
}

let t = Int(readLine()!)!
(1...t).forEach { _ in
    solution()
}
