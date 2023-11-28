let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let input = readLine()!.split(separator: " ").map { Int($0)! }
let t = input[0], p = input[1]
print(array.map { $0 % t == 0 ? $0 / t : $0 / t + 1 }.reduce(0, +))
print(n / p, n % p)
