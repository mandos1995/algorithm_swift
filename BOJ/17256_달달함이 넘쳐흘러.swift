import Foundation
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let c = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var b = [Int]()

b.append(c[0] - a[2])
b.append(c[1] / a[1])
b.append(c[2] - a[0])

for i in b{
    print(i, terminator: " ")
}
