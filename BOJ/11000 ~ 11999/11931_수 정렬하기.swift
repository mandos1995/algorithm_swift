let n = Int(readLine()!)!
var nums: [Int] = []
for _ in 0..<n {
    nums.append(Int(readLine()!)!)
}
nums.sort(by: >)
for i in 0..<n {
    print(nums[i])
}
