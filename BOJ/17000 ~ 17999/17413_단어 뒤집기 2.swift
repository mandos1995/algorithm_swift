let s = readLine()!

var stack: [Character] = []
var isTag = false
for s in s {
    if s == "<" {
        print(String(stack.reversed()),terminator: "")
        stack.removeAll()
        isTag = true
    }
    
    if s == ">" {
        stack.append(s)
        print(String(stack), terminator: "")
        isTag = false
        stack.removeAll()
        continue
    }
    
    if s == " " && isTag {
        stack.append(s)
        continue
    }
    
    if s == " " {
        print(String(stack.reversed()),terminator: "")
        print(" ", terminator: "")
        stack.removeAll()
        continue
    }
    stack.append(s)
}

print(isTag ? String(stack) : String(stack.reversed()))
