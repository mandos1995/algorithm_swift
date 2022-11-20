import Foundation

let n = Int(readLine()!)!
if n == 1 {
    print(0)
} else {
    var nums: [Int] = []
    var isDemicalNumber = [Bool](repeating: true, count: n + 1)
    for i in 2..<Int(sqrt(Double(n)) + 1) {
        if isDemicalNumber[i] {
            var j = 2
            while i * j <= n {
                isDemicalNumber[i * j] = false
                j += 1
            }
        }
    }
    
    for i in 2...n {
        if isDemicalNumber[i] {
            nums.append(i)
        }
    }
    
    var end = 0
    var total = 0
    var answer = 0
    for start in 0..<nums.count {
        while total < n && end < nums.count {
            total += nums[end]
            end += 1
        }
        if total == n {
            answer += 1
        }
        total -= nums[start]
    }
    print(answer)
}
