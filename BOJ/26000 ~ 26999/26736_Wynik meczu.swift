let input = readLine()!.map { String($0) }
let a = input.filter { $0 == "A" }.count, b = input.filter { $0 == "B" }.count
print("\(a) : \(b)")
