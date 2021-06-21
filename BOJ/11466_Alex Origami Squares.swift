let input = readLine()!.split(separator: " ").map{ Double($0)! }
let a = max(input[0], input[1])
let b = min(input[0], input[1])

if a >= 3 * b {
    print(b)
} else if a >= b * 1.5{
    print(a / 3.0)
} else{
    print(b / 2.0)
}
