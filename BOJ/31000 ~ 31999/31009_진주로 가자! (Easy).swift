let n = Int(readLine()!)!
var dict: [String: Int] = [:]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let city = input[0], price = Int(input[1])!
    dict[city] = price
}
print(dict["jinju"]!)
print(dict.filter { $0.value > dict["jinju"]! }.count)
