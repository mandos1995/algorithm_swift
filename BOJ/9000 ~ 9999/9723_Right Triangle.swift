let n = Int(readLine()!)!
for i in 1...n {
    let abc = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
    let a = abc[0], b = abc[1], c = abc[2]
    print("Case #\(i): \(a * a + b * b == c * c ? "YES" : "NO")")
}
