import Foundation

let pattern = "^(100+1+|01)+$"
let n = Int(readLine()!)!

for _ in 0..<n {
    let string = readLine()!
    if string.range(of: pattern, options: .regularExpression) != nil {
        print("YES")
    } else { print("NO") }
}
