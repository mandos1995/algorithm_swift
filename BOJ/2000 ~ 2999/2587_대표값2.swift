var nums = [Int]()
for _ in 0..<5 {
    let n = Int(readLine()!)!
    nums.append(n)
}
print(nums.reduce(0, +) / 5)
nums.sort()
print(nums[2])
