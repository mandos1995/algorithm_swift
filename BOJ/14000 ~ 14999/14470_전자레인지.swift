import Foundation
var a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let e = Int(readLine()!)!
var sec = 0
if a <= 0{
    sec += d
}
while a != b{
    if a < 0 {
        sec += c
        a += 1
    }
    else {
        sec += e
        a += 1
    }
}
print(sec)
