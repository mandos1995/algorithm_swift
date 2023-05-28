let n = Int(readLine()!)!
print(readLine()!.split(separator: " ").reversed().enumerated().map { Int($0.element)! - $0.offset - 1 }.max()!)
