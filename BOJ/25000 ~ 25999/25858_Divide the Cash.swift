let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], d = input[1]
var array: [Int] = []
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}
let total = array.reduce(0, +)
let value = d / total

array.forEach {
    print(value * $0)
}
