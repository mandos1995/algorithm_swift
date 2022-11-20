import Foundation
let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var nums: [Int] = [1]
for i in 2...input.min()! {
    if n == 2 {
        if input[0] % i == 0 && input[1] % i == 0 {
            nums.append(i)
        }
    } else {
        if input[0] % i == 0 && input[1] % i == 0 && input[2] % i == 0 {
            nums.append(i)
        }
        
    }
}
for i in nums{
    print(i)
}
