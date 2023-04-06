let n = Int(readLine()!)!
let k = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
var diff: [Int] = []

for i in 1..<n {
    diff.append(array[i] - array[i - 1])
}
diff.sort()
if k >= n {
    print(0)
} else {
    diff.removeLast(k - 1)
    print(diff.reduce(0, +))
}
