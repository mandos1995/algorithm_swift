import Foundation
var num = Int(readLine()!)!
var answer = 0
if num == 1 {
    answer = 2
} else if num % 2 == 0{
    answer = ((num / 2) + 1) * ((num / 2) + 1)
} else {
    num -= 1
    answer = ((num / 2) + 1) * ((num / 2) + 1)
    num += 1
    answer += ((num + 1) / 2)
}
print(answer)
