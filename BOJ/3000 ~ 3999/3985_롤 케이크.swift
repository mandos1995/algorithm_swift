let l = Int(readLine()!)!
let n = Int(readLine()!)!
var array = [Int](repeating: 0, count: l + 1)
var countArray = [Int](repeating: 0, count: n + 1)
var expectancy = 0
var expectancyMax = 0
var answer2 = 0
for a in 1...n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let p = input[0], k = input[1]
    if expectancyMax < k - p + 1 {
        expectancyMax = k - p + 1
        expectancy = a
    }
    for b in p...k {
        if array[b] == 0 {
            array[b] = a
            countArray[a] += 1
        }
    }
}

print(expectancy)
print(countArray.firstIndex(where: { $0 == countArray.max()! })!)
