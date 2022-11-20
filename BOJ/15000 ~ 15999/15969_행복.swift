readLine()
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
print(input.max()! - input.min()!)
