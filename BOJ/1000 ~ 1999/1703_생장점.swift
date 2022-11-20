while true{
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var result = 1
    if input[0] == 0{
        break
    }
    for i in 0..<input.count{
        if i == 0 {
            continue
        }
        if i % 2 == 1{
            result = result * input[i]
        } else {
            result = result - input[i]
        }
    }
    print(result)
}
