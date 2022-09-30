func solution() {
    let n = Int(readLine()!)!
    let sum = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +)
    if sum == 0 {
        print("Equilibrium")
    } else if sum < 0 {
        print("Left")
    } else {
        print("Right")
    }
}

let n = Int(readLine()!)!

for _ in 0..<n {
    solution()
}
