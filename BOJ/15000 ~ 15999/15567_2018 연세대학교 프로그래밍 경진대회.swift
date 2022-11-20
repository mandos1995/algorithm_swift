import Foundation
let nums = Int(readLine()!)!
var fire: [Int] = [0]

for i in 1...100 {
    fire.append(1 + i + i * i)
}
print(fire.firstIndex(of: nums)!)
