let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
(n * m) % 3 == 0 ? print("YES") : print("NO")

