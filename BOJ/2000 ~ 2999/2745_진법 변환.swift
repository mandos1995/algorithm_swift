import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }
let str = input[0]
let num = Int(input[1])!

print(Int(str, radix: num)!)
