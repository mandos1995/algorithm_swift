var isPrime = [Bool](repeating: true, count: 1000001)

for i in 3...1000000 {
    var j = 2
    while i * j < 1000000 {
        isPrime[i * j] = false
        j += 1
    }
}

while true {
    let n = Int(readLine()!)!
    
    if n == 0 {
        break
    }
    
    for i in 3...n / 2 {
        if isPrime[i] && isPrime[n - i] {
            print("\(n) = \(i) + \(n - i)")
            break
        }
    }
}
