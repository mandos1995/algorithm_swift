let input = readLine()!.map { $0 }
var stack: [Character] = []
var answer = 0
var step = 1
for (index, i) in input.enumerated() {
    if stack.isEmpty {
        step = i == "(" ? step * 2 : step * 3
        stack.append(i)
        continue
    }
    
    if stack.last! == "(" && i == ")" {
        stack.removeLast()
        if input[index - 1] == "(" {
            answer += step
        }
        step /= 2
        continue
    }
    
    if stack.last! == "[" && i == "]" {
        stack.removeLast()
        if input[index - 1] == "[" {
            answer += step
        }
        step /= 3
        continue
    }
    stack.append(i)
    step = i == "(" ? step * 2 : step * 3
}

!stack.isEmpty ? print(0) : print(answer)
