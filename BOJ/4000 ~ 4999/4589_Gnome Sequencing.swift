let n = Int(readLine()!)!
print("Gnomes:")
for _ in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    if line == line.sorted(by: <) || line == line.sorted(by: >) {
        print("Ordered")
    } else {
        print("Unordered")
    }
}
