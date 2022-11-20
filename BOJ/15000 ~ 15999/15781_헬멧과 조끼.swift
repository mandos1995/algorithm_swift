let input = readLine()!.split(separator: " ").map { Int($0)! }
let helmet = readLine()!.split(separator: " ").map { Int($0)! }
let jacket = readLine()!.split(separator: " ").map { Int($0)! }

print(helmet.max()! + jacket.max()!)
