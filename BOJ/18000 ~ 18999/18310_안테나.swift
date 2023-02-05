let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
print(array[(n - 1) / 2])
