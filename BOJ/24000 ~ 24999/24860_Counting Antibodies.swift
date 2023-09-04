let input = readLine()!.split(separator: " ").map { Int($0)! }
let (v1, j1) = (input[0], input[1])
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let (v2, j2) = (input2[0], input2[1])
let input3 = readLine()!.split(separator: " ").map { Int($0)! }
let (v3, d3, j3) = (input3[0], input3[1], input3[2])
print(((v1 * j1) + (v2 * j2)) * (v3 * d3 * j3))
