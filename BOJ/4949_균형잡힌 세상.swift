while let input = readLine() {
    if input == "." {
        break
    }
    var stack: [Character] = []
    for chr in input {
        if chr == "(" || chr == "[" {
            stack.append(chr)
        }
        if chr == ")" {
            if !stack.isEmpty {
                if stack.last! == "(" {
                    stack.removeLast()
                } else {
                    stack.append(chr)
                    break
                }
            } else {
                stack.append(chr)
                break
            }
        }
        if chr == "]" {
            if !stack.isEmpty {
                if stack.last! == "[" {
                    stack.removeLast()
                } else {
                    stack.append(chr)
                    break
                }
            } else {
                stack.append(chr)
                break
            }
        }
    }
    stack.isEmpty ? print("yes") : print("no")
}
