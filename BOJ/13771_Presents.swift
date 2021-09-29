import Foundation

let n = Int(readLine()!)!
var prices = [Double]()
for _ in 0..<n {
    prices.append(Double(readLine()!)!)
}
prices.sort()
print(String(format: "%.2f", prices[1]))
