import Foundation

while let n = Int(readLine()!), n != -1 {
    var divisors: [Int] = []
    for i in 1...Int(sqrt(Double(n))) {
        if n % i == 0 {
            divisors.append(n / i)
            divisors.append(i)
        }
    }
    
    divisors = Array(Set(divisors)).sorted(by: <)
    divisors.removeLast()
    
    if divisors.reduce(0, +) == n {
        print("\(n) = \(divisors.map { String($0) }.joined(separator: " + "))")
    } else {
        print("\(n) is NOT perfect.")
    }
}
