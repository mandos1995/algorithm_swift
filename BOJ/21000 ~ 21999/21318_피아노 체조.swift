let n = Int(readLine()!)!
let level = readLine()!.split(separator: " ").map { Int(String($0))! }
var cache = [Int](repeating: 0, count: n)

for i in 0..<n - 1 {
    cache[i + 1] = cache[i] + (level[i] > level[i + 1] ? 1 : 0)
}

let q = Int(readLine()!)!
for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0] - 1, y = input[1] - 1
    print(cache[y] - cache[x])
}
