import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
var result = 0
var count = 0
var array: [Bool] = [Bool](repeating: true, count: n + 1)

for i in 2...n {
    if array[i] == true {
        var j = 1
        while i * j <= n {
            if array[i * j] {
                array[i * j] = false
                count += 1
            }
            if count == k {
                result = i * j
                break
            }
            j += 1
        }
    }
}
print(result)
