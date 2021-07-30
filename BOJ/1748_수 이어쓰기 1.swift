import Foundation
var n = Int(readLine()!)!
var i = 1
var result = 0

while i <= n {
    result += (n - i + 1)
    i = i * 10
}
print(result)
