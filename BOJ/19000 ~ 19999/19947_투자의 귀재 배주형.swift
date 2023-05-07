let input = readLine()!.split(separator: " ").map { Int($0)! }
var h = Double(input[0]), y = input[1]
var cache = [Double](repeating: 0, count: y + 1)
cache[0] = h

for i in 1...y {
    cache[i] = cache[i - 1] * 1.05
    if i > 2 {
        cache[i] = max(cache[i], cache[i - 3] * 1.20)
    }
    if i > 4 {
        cache[i] = max(cache[i], cache[i - 5] * 1.35)
    }
    cache[i] = Double(Int(cache[i]))
}
print(Int(cache[y]))
