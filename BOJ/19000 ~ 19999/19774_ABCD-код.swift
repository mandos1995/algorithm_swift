let t = Int(readLine()!)!
for _ in 0..<t {
    let nums = readLine()!.map { Int(String($0))! }
    print(((nums[0] * 10 + nums[1]) * (nums[0] * 10 + nums[1]) + (nums[2] * 10 + nums[3]) * (nums[2] * 10 + nums[3])) % 7 == 1 ? "YES" : "NO")
}
