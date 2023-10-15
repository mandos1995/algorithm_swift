let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
let minValue = array.min()!
print(array.firstIndex(where: { $0 == minValue })!)
