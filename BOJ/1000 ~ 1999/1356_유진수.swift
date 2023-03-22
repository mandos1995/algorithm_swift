let n = readLine()!.map { Int(String($0))! }
var isSuccess = false
for i in 0..<n.count - 1{
    if n[0...i].reduce(1, *) == n[(i + 1)...].reduce(1, *) {
        isSuccess = true
        break
    }
}
print(isSuccess ? "YES" : "NO")
