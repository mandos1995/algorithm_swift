let n = Int(readLine()!)!

for _ in 0..<n {
    let t = Int(readLine()!)!
    var nums = [Int](repeating: 0, count: 1001)
    for _ in 0..<t {
        let num = Int(readLine()!)!
        nums[num] += 1
    }
    print(nums.firstIndex(of: nums.max()!)!)
}
