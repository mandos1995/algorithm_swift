let n = Int(readLine()!)!
var count = 0
var stack: [Int] = []
var result: [String] = []
var isSuccess = true
for _ in 0..<n {
    let num = Int(readLine()!)!
    if count < num {
        while count != num {
            count += 1
            stack.append(count)
            result.append("+")
        }
    }
    
    if num == stack.last! {
        _ = stack.removeLast()
        result.append("-")
    } else {
        isSuccess = false
        break
    }
}
if isSuccess {
    result.forEach { oper in
        print(oper)
    }
} else {
    print("NO")
}
