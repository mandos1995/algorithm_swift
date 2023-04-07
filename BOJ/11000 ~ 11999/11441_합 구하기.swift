let n = Int(readLine()!)!
var array = [0] + readLine()!.split(separator: " ").map { Int($0)! }
for i in 1...n {
    array[i] += array[i - 1]
}
let m = Int(readLine()!)!
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let i = input[0], j = input[1]
    print(array[j] - array[i - 1])
}
