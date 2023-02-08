let n = Int(readLine()!)!
let k = Int(readLine()!)!

var primeFactors = [Int](repeating: 0, count: n + 1)

if n < 2 {
    print(1)
} else {
    for i in 2...n {
        if primeFactors[i] == 0 {
            primeFactors[i] = i
            var j = 2
            while i * j <= n {
                primeFactors[i * j] = i
                j += 1
            }
        }
    }
    print(primeFactors[1...].filter { $0 <= k }.count)
}
