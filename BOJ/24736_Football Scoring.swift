let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let score1 = input1[0] * 6 + input1[1] * 3 + input1[2] * 2 + input1[3] + input1[4] * 2
let score2 = input2[0] * 6 + input2[1] * 3 + input2[2] * 2 + input2[3] + input2[4] * 2

print(score1, score2)
