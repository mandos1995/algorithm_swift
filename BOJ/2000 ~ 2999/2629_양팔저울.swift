let n = Int(readLine()!)!
let weights = readLine()!.split(separator: " ").map { Int($0)! } + [0]
let m = Int(readLine()!)!
let mables = readLine()!.split(separator: " ").map { Int($0)! }

var cache = [[Bool]](repeating: [Bool](repeating: false, count: 15001), count: n + 1)

func dfs(index: Int, w: Int) {
    if w > 15000 || index > n || cache[index][w] {
        return
    }
    cache[index][w] = true
    dfs(index: index + 1, w: w + weights[index])
    dfs(index: index + 1, w: abs(w - weights[index]))
    dfs(index: index + 1, w: w)
}

dfs(index: 0, w: 0)

for mable in mables {
    print((mable > 15000 || !cache[n][mable]) ? "N" : "Y", terminator: " ")
}
