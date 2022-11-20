import Foundation
let num = Int(readLine()!)!
var count = 99
if num < 100 {
    count = num
} else if num >= 100 && num < 1000{
    for i in 100...num{
        if ((i % 100) % 10) - ((i % 100) / 10) ==  ((i % 100) / 10) - (i / 100){
            count += 1
        }
    }
} else {
    count = 144
}
print(count)
