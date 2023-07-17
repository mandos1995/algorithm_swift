import Foundation

let s = readLine()!.filter { !$0.isNumber }
let k = readLine()!
print(s.contains(k) ? 1 : 0)
