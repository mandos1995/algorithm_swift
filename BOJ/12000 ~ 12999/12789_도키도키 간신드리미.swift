let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var target = 1
var stack: [Int] = []

for num in nums {
    stack.append(num)
    while !stack.isEmpty && stack.last == target {
        stack.removeLast()
        target += 1
    }
}

print(stack.isEmpty ? "Nice" : "Sad")
