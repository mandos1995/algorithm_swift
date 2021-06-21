let input = readLine()!.split(separator: " ").map{ Int($0)! }
if Set(input).count == 1 {
    print(input[0])
} else {
    print(input.max()!)
}
