let n = Int(readLine()!)!
var nums: [Int] = []
for i in 1...n {
    nums.append(i)
}
let input = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
for i in 0..<n {
    if nums[i] != input[i] { count += 1 }
}
print(count)
