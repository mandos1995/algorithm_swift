let empty = Set(["i", "pa", "te", "ni", "niti", "a", "ali", "nego", "no", "ili"])
let input = readLine()!.split(separator: " ").map { String($0) }.enumerated().filter { !(empty.contains($0.element) && $0.offset > 0) }.map { $0.element }
print(input.map { $0.uppercased() }.map { $0.prefix(1) }.joined())
