let n = Int(readLine()!)!
var isPrime = [Bool](repeating: true, count: 1001)

for i in 2...1000 {
    var j = 2
    while i * j < 1000 {
        isPrime[i * j] = false
        j += 1
    }
}

isPrime[2] = true
print(n)
var count = 0
for i in 1...1000 {
    if isPrime[i] {
        print(i, terminator: " ")
        count += 1
        if count == n {
            break
        }
    }
}
