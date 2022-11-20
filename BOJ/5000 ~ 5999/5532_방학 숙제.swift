import Foundation
let l = Int(readLine()!)!
var a = Int(readLine()!)!
var b = Int(readLine()!)!
var c = Int(readLine()!)!
var d = Int(readLine()!)!
var cnt = 0
while true{
    cnt += 1
    a -= c
    b -= d
    if a - c < 1 && b - d < 1{
        cnt += 1
        break
    }
}
print(l - cnt)
