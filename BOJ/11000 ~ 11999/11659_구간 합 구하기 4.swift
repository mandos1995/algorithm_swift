let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
let array = readLine()!.split(separator: " ").map { Int(String($0))! }
var sumArray = [Int](repeating: 0, count: n)
sumArray[0] = array[0]
for i in 1..<n {
    sumArray[i] = sumArray[i - 1] + array[i]
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[0] - 1, end = input[1] - 1
    start - 1 < 0 ? print(sumArray[end]) : print(sumArray[end] - sumArray[start - 1])
}
