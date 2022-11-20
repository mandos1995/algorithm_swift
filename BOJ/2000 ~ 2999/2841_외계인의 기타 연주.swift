var stack = [[Int]](repeating: [Int](repeating: 0, count: 0), count: 6)
let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
var count = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let lineNumber = input[0] - 1, flat = input[1]
    if stack[lineNumber].isEmpty {
        stack[lineNumber].append(flat)
        count += 1
    } else {
        if stack[lineNumber].last! < flat {
            stack[lineNumber].append(flat)
            count += 1
        } else if stack[lineNumber].last! > flat {
            while !stack[lineNumber].isEmpty && stack[lineNumber].last! > flat {
                stack[lineNumber].removeLast()
                count += 1
            }
            if !stack[lineNumber].isEmpty && stack[lineNumber].last == flat {
                continue
            } else {
                stack[lineNumber].append(flat)
                count += 1
            }
        } else {
            continue
        }
    }
}
print(count)
