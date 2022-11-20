import Foundation
let n = Int(readLine()!)!
for i in 1...n{
    let input = readLine()!.components(separatedBy: " ")
    let a = Int(input[0])!
    let b = Int(input[1])!
    print("Case #\(i): \(a + b)")
}
