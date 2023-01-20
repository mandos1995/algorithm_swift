let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int($0)! }
var prev = 0
var answer = 0
for arr in array {
    defer { prev = arr }
    if arr == prev + 1 {
        continue
    }
    answer += arr
    
}

print(answer)
