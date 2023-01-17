let n = Int(readLine()!)!
var cache = [Bool](repeating: false, count: 1001)
cache[1] = false
cache[2] = true
cache[3] = false
cache[4] = true

for i in 5...1000 {
    cache[i] = !cache[i - 1] || !cache[i - 3] || !cache[i - 4]
}

cache[n] ? print("SK") : print("CY")
