import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]
var n = a * b
var ans = String(n / c)
ans.append(".")

for _ in 0..<18 {
    n %= c
    n *= 10
    if n < c {
        ans.append("0")
    } else {
        ans.append(Character(UnicodeScalar(UInt8(48 + n / c))))
    }
}

print(ans)
