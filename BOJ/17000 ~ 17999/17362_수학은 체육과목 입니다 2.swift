import Foundation
var num = Int(readLine()!)!
if num < 5 {
    print(num)
} else {
    while num > 5{
        num -= 8
    }
    if num <= 0{
        print(2 - num)
    } else {
        print(num)
    }
}
