import Foundation
var input = Int(readLine()!)!
var new_num = 0
var i = 1
if (input / 10) + (input % 10) < 10{
    new_num = ((input % 10) * 10) + ((input / 10) + (input % 10))
} else {
    new_num = (((input % 10) * 10) + (((input / 10) + (input % 10)) % 10))
}
while true {
    if new_num == input{
        break
    }
    i += 1
    if (new_num / 10) + (new_num % 10) < 10{
        new_num = ((new_num % 10) * 10) + ((new_num / 10) + (new_num % 10))
    } else {
        new_num = (((new_num % 10) * 10) + (((new_num / 10) + (new_num % 10)) % 10))
    }
}
print(i)
