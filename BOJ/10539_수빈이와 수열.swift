let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var newArray: [Int] = [Int](repeating: input[0], count: n)
var sum = 0
for i in 1..<input.count {
    sum += newArray[i - 1]
    newArray[i] = input[i] * (i + 1) - sum
}

for i in 0..<newArray.count {
    print(newArray[i],terminator: " ")
}
