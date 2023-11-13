let n = Int(readLine()!)!
var nums: [Int] = []
for _ in 0..<n { nums.append(Int(readLine()!)!) }
nums.sort { $0 > $1 }
var answer = 0
nums.enumerated().forEach {
    let sum = $0.element - $0.offset
    answer += sum > 0 ? sum : 0
}
print(answer)
