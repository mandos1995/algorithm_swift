import Foundation
while true {
    let n = Double(readLine()!)!
    if n == 0 {
        break
    }
    let result = 1 + n + (n * n) + (n * n * n) + (n * n * n * n)
    print(String(format: "%.2f", result))
}
