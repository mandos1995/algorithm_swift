let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input.reduce(0, +) == 180 {
        print("\(input[0]) \(input[1]) \(input[2]) Seems OK")
    } else {
        print("\(input[0]) \(input[1]) \(input[2]) Check")
    }
}
