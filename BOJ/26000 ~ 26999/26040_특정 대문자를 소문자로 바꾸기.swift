let str = readLine()!.map { String($0) }
let uppers = readLine()!.split(separator: " ").map { String($0) }
print(str.map { uppers.contains($0) ? $0.lowercased() : $0 }.joined())
