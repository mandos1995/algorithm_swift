import Foundation
var n = Double(readLine()!)!
var step = 1.0
if n >= 10 {
    while true {
        n = round(n / pow(10, step)) * pow(10, step)
        if n < pow(10, step + 1.0) {
            break
        }
        step += 1
    }
}
print(Int(n))
