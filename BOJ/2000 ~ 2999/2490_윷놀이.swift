for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var sum = 0
    
    for i in 0..<input.count {
        if input[i] == 1 {
            sum += 1
        }
    }
    switch sum {
    case 0:
        print("D")
    case 1:
        print("C")
    case 2:
        print("B")
    case 3:
        print("A")
    case 4:
        print("E")
    default:
        print("없는 결과")
    }
}
