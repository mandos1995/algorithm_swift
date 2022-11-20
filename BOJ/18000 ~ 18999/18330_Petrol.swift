import Foundation
let liter = Int(readLine()!)!
let nextMonth = Int(readLine()!)!
var sum = 0

if liter <= 60 {
    sum = liter * 1500
} else {
    if liter <= nextMonth{
        sum = liter * 1500
    } else if (liter - 60) <= nextMonth{
        sum = liter * 1500
    }
    else{
        sum = (60 + nextMonth) * 1500  + (liter - 60 - nextMonth) * 3000
    }
}
print(sum)
