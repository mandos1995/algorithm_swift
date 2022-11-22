let n = Int(readLine()!)!
var array: [Int] = []
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

for i in 1...n {
    print(array.firstIndex(of: i)! + 1)
}
