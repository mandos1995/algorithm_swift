let input = readLine()!.split(separator: " ").map { Int($0)! }
let q = input[0], n = input[1]
var h = [Int](repeating: 0, count: q + 1)
var g = [Int](repeating: 0, count: q + 1)
var j = [Int](repeating: 0, count: q + 1)
for i in 1...q {
    let num = Int(readLine()!)!
    
    h[i] = h[i - 1]
    g[i] = g[i - 1]
    j[i] = j[i - 1]
    
    switch num {
    case 1:
        h[i] += 1
    case 2:
        g[i] += 1
    default:
        j[i] += 1
    }
}

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    print(h[b] - h[a - 1], terminator: " ")
    print(g[b] - g[a - 1], terminator: " ")
    print(j[b] - j[a - 1], terminator: " ")
    print()
}
