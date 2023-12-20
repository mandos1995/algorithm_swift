import Foundation

let input = readLine()!.split(separator: "-").map { Int($0)! }
var y = input[0], m = input[1], d = input[2] + Int(readLine()!)!

m += (d - 1) / 30
d = (d - 1) % 30 + 1
y += (m - 1) / 12
m = (m - 1) % 12 + 1
print(String(format: "%04d", y) + "-" + String(format: "%02d", m) + "-" + String(format: "%02d", d))
