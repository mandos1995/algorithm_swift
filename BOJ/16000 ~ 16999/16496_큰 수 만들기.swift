let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { String($0) }.sorted { $0 + $1 > $1 + $0 }
print(nums[0] == "0" ? "0" : nums.reduce("", +))
