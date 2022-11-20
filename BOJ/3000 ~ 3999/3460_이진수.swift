import Foundation
let t = Int(readLine()!)!
for _ in 0..<t {
    let num = Int(readLine()!)!
    let binary = String(num,radix: 2)
    var j = 0
    for i in String(binary.reversed()) {
        if i == "1" {
            print(j,terminator: " ")
        }
        j += 1
    }
    print()
}
