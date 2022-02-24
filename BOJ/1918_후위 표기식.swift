let words = readLine()!
var stack: [Character] = []
var operater: [Character] = ["+", "-", "*", "/", "(", ")"]
var answer = ""
for word in words {
    if operater.contains(word) {
        if word == "+" || word == "-" {
            if stack.isEmpty {
                stack.append(word)
            } else {
                while !stack.isEmpty && stack[stack.count - 1] != "(" && stack[stack.count - 1] != ")" {
                    answer += String(stack.removeLast())
                }
                stack.append(word)
            }
        } else if word == "*" || word == "/" {
            while !stack.isEmpty && (stack[stack.count - 1] == "*" || stack[stack.count - 1] == "/") {
                answer += String(stack.removeLast())
            }
            stack.append(word)
        } else if word == "(" {
            stack.append(word)
        } else {
            while !stack.isEmpty && stack[stack.count - 1] != "(" {
                answer += String(stack.removeLast())
            }
            _ = stack.removeLast()
        }
    } else {
        answer += String(word)
    }
}
print(answer + stack.reversed())
