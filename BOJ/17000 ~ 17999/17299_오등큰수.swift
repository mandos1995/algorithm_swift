let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
let countDict = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
var result = [Int](repeating: -1, count: n)
var stack: [Int] = []

for i in 0..<nums.count {
    while !stack.isEmpty && countDict[nums[stack.last!]]! < countDict[nums[i]]! {
        result[stack.removeLast()] = nums[i]
    }
    stack.append(i)
}

print(result.map { String($0) }.joined(separator: " "))
