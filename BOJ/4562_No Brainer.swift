let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    input[0] < input[1] ? print("NO BRAINS") : print("MMM BRAINS")
}
