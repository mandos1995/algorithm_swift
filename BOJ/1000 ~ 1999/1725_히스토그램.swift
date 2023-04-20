let n = Int(readLine()!)!
var array: [Int] = []
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}
var stack: [Int] = []
var answer = 0
for i in 0..<n {
    while !stack.isEmpty && array[stack.last!] >= array[i] {
        let index = stack.removeLast()
        answer = max(answer, stack.isEmpty ? i * array[index] : (i - stack.last! - 1) * array[index])
    }
    stack.append(i)
}

while !stack.isEmpty {
    let index = stack.removeLast()
    answer = max(answer, stack.isEmpty ? n * array[index] : (n - stack.last! - 1) * array[index])
}

print(answer)
