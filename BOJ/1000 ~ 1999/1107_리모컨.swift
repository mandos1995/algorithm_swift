let n = Int(readLine()!)!
let m = Int(readLine()!)!
var button: [Int] = []
if m != 0 {
    button = readLine()!.split(separator: " ").map { Int($0)! }
}
var answer = abs(100 - n)

for num in 0...1000000 {
    var isBroken = false
    for i in String(num) {
        if button.contains(Int(String(i))!) {
            isBroken = true
            break
        }
    }
    if !isBroken {
        answer = min(answer, String(num).count + abs(n - num))
    }
}
print(answer)
