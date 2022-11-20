let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var nums: [String] = []
for _ in 0..<n {
    nums.append(readLine()!)
}
nums = nums.sorted { $0 + $1 > $1 + $0 }
var repeatNumber = nums.sorted { $0.count == $1.count ? $0 > $1 : $0.count > $1.count }[0]
var answer = ""
var index = 0
for (i, num) in nums.enumerated() {
    answer += num
    if num == repeatNumber {
        answer += String(repeating: repeatNumber, count: k - n)
        index = i
        break
    }
}
answer += nums[(index + 1)...].joined(separator: "")
print(answer)
