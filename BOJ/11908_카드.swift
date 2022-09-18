let n = Int(readLine()!)!
print(readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)[0..<n - 1].reduce(0, +))
