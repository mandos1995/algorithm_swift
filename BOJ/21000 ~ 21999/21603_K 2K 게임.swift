let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let answer = [Int](1...n).filter { $0 % 10 != k % 10 && $0 % 10 != (2 * k) % 10 }
print(answer.count)
print(answer.map { String($0) }.joined(separator: " "))
