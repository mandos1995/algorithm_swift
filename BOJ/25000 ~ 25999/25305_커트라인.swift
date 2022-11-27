let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
print(array[k - 1])
