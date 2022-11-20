let boom = 210
var peopleNum = Int(readLine()!)!
let boomNum = Int(readLine()!)!
var sum = 0
for _ in 0..<boomNum {
    let input = readLine()!.split(separator: " ").map { String($0) }
    sum += Int(input[0])!
    if sum >= boom {
        break
    }
    if input[1] == "T" {
        if peopleNum == 8 {
            peopleNum = 1
        } else {
            peopleNum += 1
        }
    }
}
print(peopleNum)
