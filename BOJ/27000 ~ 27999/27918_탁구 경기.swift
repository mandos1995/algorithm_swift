let n = Int(readLine()!)!
var x = 0, y = 0
for _ in 0..<n {
    if readLine()! == "D" { x += 1 }
    else { y += 1 }
    if abs(x - y) >= 2 {
        break
    }
}
print("\(x):\(y)")
