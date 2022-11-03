let n = Int(readLine()!)!
var set: Set<Int> = []
var lastNumber = 0
for _ in 0..<n {
    let num = Int(readLine()!)!
    set.insert(num)
    lastNumber = num
}
if lastNumber == set.count {
    print("good job")
} else {
    for i in 1...lastNumber {
        if !set.contains(i) { print(i) }
    }
}
