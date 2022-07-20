let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var array: [[Character]] = []
for _ in 0..<n {
    array.append(readLine()!.map { $0 })
}

for i in 0..<n {
    print(String(array[i].reversed()))
}
