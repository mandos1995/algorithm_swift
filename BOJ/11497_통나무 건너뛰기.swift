for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    let tree = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
    var total = 0
    for i in 2..<n {
        total = max(tree[i] - tree[i - 2], total)
    }
    print(total)
}
