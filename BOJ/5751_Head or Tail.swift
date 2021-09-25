while true {
    let n = Int(readLine()!)!
    var mary = 0
    var john = 0
    if n == 0 {
        break
    } else {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        for i in 0..<n {
            if input[i] == 0 {
                mary += 1
            } else {
                john += 1
            }
        }
    }
    print("Mary won \(mary) times and John won \(john) times")
}
