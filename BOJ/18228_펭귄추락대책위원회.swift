let n = Int(readLine()!)!
let ices = readLine()!.split(separator: " ").map { Int($0)! }
var penguinIndex = ices.firstIndex(of: -1)!
print(ices[0..<penguinIndex].min()! + ices[penguinIndex + 1..<n].min()!)
