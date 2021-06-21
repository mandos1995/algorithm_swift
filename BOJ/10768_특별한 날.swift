import Foundation
let month = Int(readLine()!)!
let day = Int(readLine()!)!

if month == 2 && day == 18 {
    print("Special")
} else if month >= 2 && day > 18{
    print("After")
} else if month > 2{
    print("After")
} else{
    print("Before")
}
