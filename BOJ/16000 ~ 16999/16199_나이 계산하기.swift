import Foundation
let birth = readLine()!.split(separator: " ").map { Int($0)! }
let year = readLine()!.split(separator: " ").map { Int($0)! }

var result1 = 0
var result2 = year[0] - birth[0] + 1
var result3 = year[0] - birth[0]
if (year[1] - birth[1]) >= 0 {
    result1 = year[0] - birth[0]
    if (year[1] - birth[1]) == 0 && (year[2] - birth[2]) < 0 {
        result1 = year[0] - birth[0] - 1
    }
} else {
    result1 = year[0] - birth[0] - 1
}
print(result1)
print(result2)
print(result3)
