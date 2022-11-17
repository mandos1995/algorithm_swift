let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Double($0)! }
var v: Double = 0

for i in 0..<n {
    v = v + a[i] - ((v * a[i]) / 100)
    print(v)
}
