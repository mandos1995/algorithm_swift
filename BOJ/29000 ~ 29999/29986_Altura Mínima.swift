let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], target = input[1]
print(readLine()!.split(separator: " ").map { Int($0)! }.filter { $0 <= target }.count)
