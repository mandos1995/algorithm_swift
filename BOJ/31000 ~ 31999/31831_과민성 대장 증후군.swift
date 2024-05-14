import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }
var stress = 0
var answer = 0
array.forEach {
    stress += $0
    stress = max(0, stress)
    answer += stress >= m ? 1 : 0
}
print(answer)
