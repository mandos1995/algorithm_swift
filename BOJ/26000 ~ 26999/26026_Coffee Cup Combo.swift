let n = Int(readLine()!)!
let lecture = readLine()!
var coffeeCount = 0
var awakeCount = 0

for lec in lecture {
    if lec == "0" {
        if coffeeCount > 0 {
            coffeeCount -= 1
            awakeCount += 1
        }
    } else {
        coffeeCount = 2
        awakeCount += 1
    }
}

print(awakeCount)
