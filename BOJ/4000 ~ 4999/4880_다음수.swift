while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 0 && input[1] == 0 && input[2] == 0 {
        break
    }
    
    if (input[1] * input[1]) == (input[0] * input[2]) {
        print("GP \(input[2] * (input[2] / input[1]))")
    }
    else {
        print("AP \(input[2] + (input[1] - input[0]))")
    }
}
