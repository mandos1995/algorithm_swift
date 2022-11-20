import Foundation
let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var n = 0
var m = -1
for i in 0...input[2]{
    let j = 1
    m += j
    if m == input[1]{
        m = 0
        n += 1
    }
}
print(n, m)
