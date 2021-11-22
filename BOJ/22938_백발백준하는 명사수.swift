let input = readLine()!.split(separator: " ").map { Int($0)! }
let input2 = readLine()!.split(separator: " ").map { Int($0)! }

let x1 = input[0], y1 = input[1], r1 = input[2]
let x2 = input2[0], y2 = input2[1], r2 = input2[2]

let d = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)

(r1 + r2) * (r1 + r2) > d ? print("YES") : print("NO")
