let n = Int(readLine()!)!
var nums: [String] = []
var numsSet: Set<String> = []
for _ in 0..<n {
    nums.append(readLine()!)
}

for i in 1...nums.first!.count {
    for num in nums {
        numsSet.insert(String(num.suffix(i)))
    }
    if numsSet.count == n {
        print(i)
        break
    }
    numsSet.removeAll()
}
