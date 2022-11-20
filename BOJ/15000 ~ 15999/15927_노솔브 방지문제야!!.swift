let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    if (n & (-n)) == n {
        print(1)
    } else {
        print(0)
    }
}
