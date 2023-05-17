let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
var v = [[Bool]](repeating: [false , false], count: 2)
for _ in 0..<k {
    let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
    let y = input[0], x = input[1]
    v[y % 2][x % 2] = true
}

print(v == [[true, true], [true, true]] ? "YES" : "NO")
