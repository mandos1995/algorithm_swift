import Foundation
var input: [Int] = [Int]()
for _ in 0..<7 {
    input.append(Int(readLine()!)!)
}
var num: [Int] = [Int]()
var sum: Int = 0
for i in 0..<input.count {
    if input[i] % 2 == 1 {
        num.append(input[i])
    }
}
if num.count == 0 {
    print(-1)
} else {
    for i in 0..<num.count {
       sum += num[i]
    }
    print(sum)
    print(num.min()!)
}
