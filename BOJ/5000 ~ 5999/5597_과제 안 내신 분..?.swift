var nums = [Int]()
for i in 1...30 {
    nums.append(i)
}
for _ in 0..<28 {
    let num = Int(readLine()!)!
    nums.remove(at: nums.firstIndex(of: num)!)
}

nums.sort()
print(nums[0])
print(nums[1])
