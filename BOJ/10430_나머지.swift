import Foundation
let line = readLine()!
let lineArr = line.components(separatedBy: " ")
let a = Int(lineArr[0])!
let b = Int(lineArr[1])!
let c = Int(lineArr[2])!

print((a+b)%c)
print(((a%c)+(b%c))%c)
print((a*b)%c)
print(((a%c)*(b%c))%c)

