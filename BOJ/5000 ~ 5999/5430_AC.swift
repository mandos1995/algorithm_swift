let t = Int(readLine()!)!
for _ in 0..<t {
    let functions = readLine()!
    let length = Int(readLine()!)!
    let array = readLine()!.dropFirst().dropLast().split(separator: ",").map { Int(String($0))! }
    
    var head = 0, tail = length - 1
    var isReversed = false
    var isError = false
    
    for function in functions {
        if function == "R" {
            isReversed.toggle()
        } else {
            if head > tail {
                isError = true
                break
            }
            if isReversed {
                tail -= 1
            } else {
                head += 1
            }
        }
    }
    
    if isError {
        print("error")
    } else if head > tail {
        print("[]")
    } else {
        var result = ""
        if isReversed {
            result = array[head...tail].reversed().map { String($0) }.joined(separator: ",")
        } else {
            result = array[head...tail].map { String($0) }.joined(separator: ",")
        }
        print("[\(result)]")
    }
}
