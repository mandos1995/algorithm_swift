let input = readLine()!.split(separator: " ").map { Int($0)! }

if input[0] + input[1] == input[2] {
    print("\(input[0])+\(input[1])=\(input[2])")
}
else if input[0] - input[1] == input[2] {
    print("\(input[0])-\(input[1])=\(input[2])")
}
else if input[0] * input[1] == input[2] {
    print("\(input[0])*\(input[1])=\(input[2])")
}
else if input[0] / input[1] == input[2] {
    print("\(input[0])/\(input[1])=\(input[2])")
}
else if input[0] == input[1] + input[2] {
    print("\(input[0])=\(input[1])+\(input[2])")
}
else if input[0] == input[1] - input[2] {
    print("\(input[0])=\(input[1])-\(input[2])")
}
else if input[0] == input[1] * input[2] {
    print("\(input[0])=\(input[1])*\(input[2])")
}
else if input[0] == input[1] / input[2] {
    print("\(input[0])=\(input[1])/\(input[2])")
}
