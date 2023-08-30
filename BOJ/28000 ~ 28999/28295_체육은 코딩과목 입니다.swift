let dir = ["N", "E", "S", "W"]
var index = 0
for _ in 0..<10 {
    let t = Int(readLine()!)!
    switch t {
    case 1: index += 1
    case 2: index += 2
    case 3: index -= 1
    default: break
    }
    index += 4
    index %= 4
}
print(dir[index])

