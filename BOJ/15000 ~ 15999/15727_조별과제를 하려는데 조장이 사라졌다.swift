import Foundation
var input = Int(readLine()!)!
var t = 0
while true{
    input -= 5
    t += 1
    if input <= 0{
        break
    }
}
print(t)
