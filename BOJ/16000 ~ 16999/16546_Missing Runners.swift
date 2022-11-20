let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
var current = 1
var isLast = true

for num in nums {
    if current != num {
        print(current)
        isLast = false
        break
    }
    current += 1
}

if isLast {
    print(current)
}
