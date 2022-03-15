let x = Int(readLine()!)!
var rest = x
let n = Int(readLine()!)!
for _ in 0..<n {
    rest -= Int(readLine()!)!
    rest += x
}
print(rest)
