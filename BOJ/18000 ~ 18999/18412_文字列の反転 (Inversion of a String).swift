import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], a = input[1], b = input[2]
var s = readLine()!.map { $0 }

s.replaceSubrange((a-1)...(b-1), with: s[a-1...b-1].reversed())
print(String(s))
