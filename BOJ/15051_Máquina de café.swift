import Foundation
let f1 = Int(readLine()!)!
let f2 = Int(readLine()!)!
let f3 = Int(readLine()!)!

let cafe1 = f2 * 2 + f3 * 4
let cafe2 = f1 * 2 + f3 * 2
let cafe3 = f1 * 4 + f2 * 2

print(min(cafe1, cafe2, cafe3))
