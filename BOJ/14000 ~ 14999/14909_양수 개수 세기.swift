let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let filter = input.filter { $0 > 0 }
print(filter.count)
