import Foundation
let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let p = Int(readLine()!)!
var x_price: Int
var y_price: Int

x_price = a * p
if p <= c {
    y_price = b
} else {
    y_price = b + (p - c) * d
}
print(min(x_price, y_price))
