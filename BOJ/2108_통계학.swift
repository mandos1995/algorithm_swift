import Foundation
var nums: [Int] = []
var numsCountDict: [Int: Int] = [:]
let n = Int(readLine()!)!
for _ in 0..<n {
    let num = Int(readLine()!)!
    nums.append(num)
    if numsCountDict[num] == nil {
        numsCountDict[num] = 1
    } else {
        numsCountDict[num]! += 1
    }
}
nums.sort()
func getAvg(_ array: [Int]) -> Int {
    let total = array.map { Double($0) }.reduce(0, +)
    return Int(round(total / Double(n)))
}

let maxCountValues = numsCountDict.filter { $0.value == numsCountDict.values.max()! }.sorted { $0.key < $1.key }

print(getAvg(nums))
print(nums[n / 2])
if maxCountValues.count > 1 {
    print(maxCountValues[1].key)
} else {
    print(maxCountValues[0].key)
}
print(nums.last! - nums.first!)
