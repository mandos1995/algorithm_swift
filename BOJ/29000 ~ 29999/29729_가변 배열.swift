let input = readLine()!.split(separator: " ").map { Int($0)! }
var s = input[0]
let n = input[1], m = input[2]
var currentSize = 0
for _ in 0..<(n + m) {
    let c = Int(readLine()!)!
    if c == 1 {
        if currentSize + 1 > s {
            s *= 2
        }
        currentSize += 1
        
    } else {
        currentSize -= 1
    }
}

print(s)

