let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Double($0)! }.filter { $0 >= 0 }
if array.isEmpty {
    print(0)
} else {
    print(array.reduce(0, +) / Double(array.count))
}
