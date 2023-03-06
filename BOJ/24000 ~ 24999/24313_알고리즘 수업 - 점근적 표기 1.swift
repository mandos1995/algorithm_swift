let input = readLine()!.split(separator: " ").map { Int($0)! }
let a1 = input[0], a0 = input[1]
let c = Int(readLine()!)!
let n = Int(readLine()!)!

a1 * n + a0 <= c * n && c - a1 >= 0 ? print(1) : print(0)
