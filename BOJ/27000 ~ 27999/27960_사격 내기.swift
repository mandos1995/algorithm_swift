let input = readLine()!.split(separator: " ").map { Int($0)! }
var a = input[0], b = input[1]
var answer = 0

for i in 0...9 {
    let aBit = a & 1 << i
    let bBit = b & 1 << i
    
    if aBit != bBit {
        answer += 1 << i
    }
}

print(answer)
