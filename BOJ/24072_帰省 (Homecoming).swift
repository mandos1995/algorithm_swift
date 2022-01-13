let input = readLine()!.split(separator: " ").map { Int($0)! }
let range = (input[0] ..< input[1])
range.contains(input[2]) == true ? print(1) : print(0)
