import Foundation
let n = Int(readLine()!)!
var boatCount = [Int]()
for _ in 0..<n {
    boatCount.append(Int(readLine()!)!)
}
boatCount[0] == boatCount.max()! ? print("S") : print("N")
