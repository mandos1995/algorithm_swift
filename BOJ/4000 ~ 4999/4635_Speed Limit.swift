while true {
    let n = Int(readLine()!)!
    if n == -1 {
        break
    }
    var result = 0
    var save = 0
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        result += input[0] * (input[1] - save)
        save = input[1]
    }
    print("\(result) miles")
}
