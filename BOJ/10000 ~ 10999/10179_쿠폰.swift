import Foundation
var t = Int(readLine()!)!
var input = [Double]()
for _ in 0..<t{
    input.append(Double(readLine()!)!)
}
for i in 0..<t{
    input[i] = input[i] * 0.8
}
for i in 0..<t{
    print("$",terminator: "")
    
    print(String(format: "%.2f", input[i]))
}
