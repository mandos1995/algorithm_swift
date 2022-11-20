let n = Int(readLine()!)!
print(String(repeating: "@", count: 2 + n))
for _ in 0..<n {
    print("@",terminator: "")
    print(String(repeating: " ", count: n),terminator: "")
    print("@")
}
print(String(repeating: "@", count: 2 + n))
