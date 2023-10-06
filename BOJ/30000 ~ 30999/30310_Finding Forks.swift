let n = Int(readLine()!)!
let fork = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
print(fork[0] + fork[1])

