func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

let n = Int(readLine()!)!
var trees: [Int] = []
for _ in 0..<n {
    let tree = Int(readLine()!)!
    trees.append(tree)
}

trees.sort()

var mid = 0

for i in 0..<n - 1 {
    mid = gcd(mid, trees[i + 1] - trees[i])
}

print((trees.last! - trees.first!) / mid - n + 1)
