let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
let coke = input[0], beer = input[1]
let answer = coke / 2 + beer
print(min(answer, n))
