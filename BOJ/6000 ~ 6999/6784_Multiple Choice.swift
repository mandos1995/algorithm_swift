let n = Int(readLine()!)!
var array: [String] = []
var answer = 0
for _ in 0..<n {
    array.append(readLine()!)
}
for i in 0..<n {
    let input = readLine()!
    if array[i] == input {
        answer += 1
    }
}

print(answer)
