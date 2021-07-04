let n = Int(readLine()!)!
var com = 0
for _ in 0..<n {
    let plug = Int(readLine()!)!
    com += plug
}
print(com - n + 1)
