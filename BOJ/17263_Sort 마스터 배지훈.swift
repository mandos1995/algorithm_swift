let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)
print(input[0])
