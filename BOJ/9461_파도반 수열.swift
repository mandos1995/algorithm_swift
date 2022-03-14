var cache = [Int](repeating: 0, count:  101)
cache[1] = 1
cache[2] = 1
cache[3] = 1
for i in 4...100 {
    cache[i] = cache[i - 2] + cache[i - 3]
}
func solution() {
    let n = Int(readLine()!)!
    print(cache[n])
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
