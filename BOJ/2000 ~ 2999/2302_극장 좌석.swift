let n = Int(readLine()!)!
let m = Int(readLine()!)!

var cache = [Int](repeating: 1, count: 41)
cache[2] = 2

for i in 3...40 {
    cache[i] = cache[i - 1] + cache[i - 2]
}
var startIndex = 1
if m < 1 {
    print(cache[n])
} else {
    var answer = 1
    for _ in 0..<m {
        let endIndex = Int(readLine()!)!
        answer *= cache[endIndex - startIndex]
        startIndex = endIndex + 1
    }
    answer *= cache[n + 1 - startIndex]
    print(answer)
}
