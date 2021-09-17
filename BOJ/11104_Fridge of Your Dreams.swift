import Foundation
let n = Int(readLine()!)!
for _ in 0..<n {
    let binary = readLine()!
    print(Int(binary, radix: 2)!)
}
