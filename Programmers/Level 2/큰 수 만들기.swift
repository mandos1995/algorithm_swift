import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack: [Character] = []
    var count = 0
    for n in number {
        if stack.isEmpty {
            stack.append(n)
            continue
        }
        
        if count == k {
            stack.append(n)
            continue
        }
        
        while stack.last! < n {
            stack.removeLast()
            count += 1
            if count == k {
                break
            }
            
            if stack.isEmpty {
                break
            }
        }
        stack.append(n)
    }
    for i in 0..<k - count {
        stack.removeLast()
    }
    return String(stack)
}
