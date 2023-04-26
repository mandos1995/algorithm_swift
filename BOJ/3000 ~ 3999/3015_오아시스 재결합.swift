let n = Int(readLine()!)!
var heights: [Int] = []
for _ in 0..<n {
    heights.append(Int(readLine()!)!)
}
var answer = 0
var stack: [(Int, Int)] = []

for height in heights {
    var count = 1
    while !stack.isEmpty && stack.last!.0 < height {
        answer += stack.removeLast().1
    }
    if !stack.isEmpty && stack.last!.0 == height {
        count = stack.last!.1 + 1
        answer += stack.removeLast().1
    }
    if !stack.isEmpty && stack.last!.0 > height {
        answer += 1
    }
    stack.append((height, count))
}

print(answer)
