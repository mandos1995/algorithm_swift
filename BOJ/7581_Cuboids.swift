while true {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 0 && input[1] == 0 && input[2] == 0 && input[3] == 0 {
        break
    }
    
    
    var idx = 0
    for i in 0..<4 {
        if input[i] == 0 {
            idx = i
        }
    }
    
    switch idx {
    case 0:
        input[0] = input[3] / (input[1] * input[2])
    case 1:
        input[1] = input[3] / (input[0] * input[2])
    case 2:
        input[2] = input[3] / (input[0] * input[1])
    case 3:
        input[3] = input[0] * input[1] * input[2]
    default:
        break
    }
    for result in input {
        print(result, terminator: " ")
    }
    print()
}
