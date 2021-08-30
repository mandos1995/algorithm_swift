let k = Double(readLine()!)!
let input = readLine()!.split(separator: " ").map { Double($0)! }
let (d1, d2) = (input[0], input[1])
print((k * k) - ((d1 - d2) / 2) * ((d1 - d2) / 2))
