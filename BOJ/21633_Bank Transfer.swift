import Foundation
let num = Double(readLine()!)!
var pay = num * 0.01 + 25
if pay > 2000.0{
    pay = 2000.0
}
if pay < 100.0 {
    pay = 100.0
}
print(String(format: "%.2f", pay))
