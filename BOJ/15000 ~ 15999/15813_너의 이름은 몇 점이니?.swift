readLine()!
let str = readLine()!
var sum = 0
for i in str {
    sum += Int(i.asciiValue!) - 64
}
print(sum)
