let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]
let kx = readLine()!.split(separator: " ").map { Int($0)! }
let k = kx[0], x = kx[1]

let friends = Set((a...b)).intersection(Set((k-x)...(k+x))).count
print(friends == 0 ? "IMPOSSIBLE" : friends)
