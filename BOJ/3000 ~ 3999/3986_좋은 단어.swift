var count = 0
for _ in 0..<Int(readLine()!)! {
    var stack: [Character] = []
    let words = readLine()!
    
    for word in words {
        if stack.isEmpty {
            stack.append(word)
        } else {
            if stack.last! == word {
                _ = stack.removeLast()
            } else {
                stack.append(word)
            }
        }
    }
    count += stack.isEmpty == true ? 1 : 0
}
print(count)
