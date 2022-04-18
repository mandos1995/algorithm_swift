var string = readLine()!
var word = readLine()!
var stack: [Character] = []
for s in string {
    stack.append(s)
    if s == word.last && stack.count >= word.count {
        if String(stack[stack.count - word.count...stack.count - 1]) == word {
            for _ in 0..<word.count {
                stack.removeLast()
            }
        }
    }
}

if stack.isEmpty {
    print("FRULA")
} else {
    print(String(stack))
}
