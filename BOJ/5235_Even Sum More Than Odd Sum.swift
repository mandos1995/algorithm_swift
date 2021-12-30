for _ in 0..<Int(readLine()!)! {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    input.removeFirst()
    let evenSum = input.filter { $0 % 2 == 0 }.reduce(0, +)
    let oddSum = input.filter { $0 % 2 == 1 }.reduce(0, +)
    
    if evenSum == oddSum {
        print("TIE")
    } else if evenSum > oddSum {
        print("EVEN")
    } else {
        print("ODD")
    }
}
