let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], s = input[1]
let m = readLine()!.split(separator: " ").map { Int($0)! }
print((m.max()! * s - 1) / 1000 + 1)
