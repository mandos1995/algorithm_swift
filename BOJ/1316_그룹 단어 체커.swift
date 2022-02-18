let n = Int(readLine()!)!
var count = 0
for _ in 0..<n {
    var stack: [Character] = []
    let word = readLine()!
    for w in word {
        if !stack.isEmpty && stack.last! == w {
            stack.removeLast()
        }
        stack.append(w)
    }
    if stack.count == Set(stack).count {
        count += 1
    }
}
print(count)
