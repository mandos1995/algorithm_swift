let n = Int(readLine()!)!

for _ in 0..<n {
    print(String(repeating: "@", count: n * 3), terminator: "")
    print(String(repeating: " ", count: n),terminator: "")
    print(String(repeating: "@", count: n))
}

for _ in 0..<3 * n {
    print(String(repeating: "@", count: n),terminator: "")
    print(String(repeating: " ", count: n),terminator: "")
    print(String(repeating: "@", count: n),terminator: "")
    print(String(repeating: " ", count: n),terminator: "")
    print(String(repeating: "@", count: n))
}

for _ in 0..<n {
    print(String(repeating: "@", count: n), terminator: "")
    print(String(repeating: " ", count: n),terminator: "")
    print(String(repeating: "@", count: n * 3))
}
