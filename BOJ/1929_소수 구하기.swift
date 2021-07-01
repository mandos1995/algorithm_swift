import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0]
let n = input[1]
var array = [Bool](repeating: true, count: n + 1)
array[1] = false

for i in 2...Int(sqrt(Double(n)) + 1){
    if array[i] {
        var j = 2
        while i * j <= n {
            array[i * j] = false
            j += 1
        }
    }
}
for i in m...n{
    if array[i]{
        print(i)
    }
}
