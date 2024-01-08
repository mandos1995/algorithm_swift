let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var array: [[String]] = []
for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { String($0) })
}

for arr in array {
    for _ in 0..<k {
        print(arr.flatMap { String(repeating: $0, count: k) }.map { String($0) }.joined(separator: " "))
    }
}
