import Foundation
let n = Int(readLine()!)!
var sum = n
var sum2 = Int(sqrt(Double(n)))
if n >= 4 {
    for i in 2...sum2 {
        sum += n / i - (i - 1)
    }
}
// print(sum + n / 2 - 1 + n / 3 - 2)
print(sum)
