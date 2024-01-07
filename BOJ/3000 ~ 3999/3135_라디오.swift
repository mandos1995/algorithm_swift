let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1]
var array: [Int] = []
let n = Int(readLine()!)!
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}
array = array.map { abs($0 - b) + 1 }.sorted { $0 < $1 }
print(min(abs(a - b), array.first!))
