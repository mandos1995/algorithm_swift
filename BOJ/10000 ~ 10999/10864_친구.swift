let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var frineds = [[Int]](repeating: [], count: n + 1)
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    frineds[a].append(b)
    frineds[b].append(a)
}

for i in 1...n {
    print(frineds[i].count)
}
