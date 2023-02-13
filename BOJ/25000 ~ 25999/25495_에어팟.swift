let n = Int(readLine()!)!
let phones = readLine()!.split(separator: " ").map { Int($0)! }

var prevPhone = 0
var battery = 0
var answer = 0

for i in 0..<n {
    if prevPhone == phones[i] {
        battery *= 2
        answer += battery
    } else {
        battery = 2
        answer += battery
        prevPhone = phones[i]
    }
    if answer >= 100 {
        prevPhone = 0
        battery = 0
        answer = 0
    }
}

print(answer)
