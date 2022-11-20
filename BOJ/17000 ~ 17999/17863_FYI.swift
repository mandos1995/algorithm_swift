import Foundation
var num = readLine()!
let numRange = num.index(num.startIndex, offsetBy: 0) ... num.index(num.startIndex, offsetBy: 2)
if num[numRange] == "555"{
    print("YES")
} else{
    print("NO")
}
