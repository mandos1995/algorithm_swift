import Foundation

func solution(_ s:String) -> Int{
    var stack: [Character] = []
    for s in s {
        if stack.isEmpty {
            stack.append(s)
            continue
        }
        if stack.last! == s {
            stack.removeLast()
            continue
        }
        stack.append(s)
    }

    return stack.isEmpty ? 1 : 0
}
