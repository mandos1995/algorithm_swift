let n = Int(readLine()!)!
var nums: [Int] = []
for _ in 0..<n { nums.append(Int(readLine()!)!) }
print(nums.reduce(0, +))
