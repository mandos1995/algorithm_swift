import Foundation

func solution(_ s:String) -> Bool {
    var stack: [Character] = []
    
    for s in s {
        if stack.isEmpty {
            stack.append(s)
            continue
        }
        
        if s == ")" && stack.last! == "(" {
            stack.removeLast()
            continue
        }
        stack.append(s)
    }
    return stack.isEmpty
}
