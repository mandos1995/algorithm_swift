let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] + input[2] > input[1] {
        print("do not advertise")
    } else if input[0] + input[2] == input[1] {
        print("does not matter")
    } else {
        print("advertise")
    }
}
