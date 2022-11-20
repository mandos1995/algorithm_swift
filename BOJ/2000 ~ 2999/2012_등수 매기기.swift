var nums: [Int] = []
for _ in 0..<Int(readLine()!)! {
    nums.append(Int(readLine()!)!)
}

nums.sort()
var result = 0
for i in 0..<nums.count {
    if nums[i] == i + 1 {
        continue
    } else {
        result += abs((i + 1) - nums[i])
    }
}
print(result)
