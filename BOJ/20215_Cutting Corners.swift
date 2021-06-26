import Foundation
let input = readLine()!.split(separator: " ").map {Double($0)!}
let sum = input[0] * 2 + input[1] * 2
let diagonal = sqrt(input[0] * input[0] + input[1] * input[1])
let diagonal_sum = input[0] + input[1] + diagonal
print(sum - diagonal_sum)
