let n = Int(readLine()!)!
let command = readLine()!
var answer = 0
var count = [0, 0]
forLoop: for cmd in command {
    switch cmd {
    case "L":
        count[0] += 1
    case "R":
        if count[0] > 0 {
            count[0] -= 1
            answer += 1
        } else { break forLoop }
    case "S":
        count[1] += 1
    case "K":
        if count[1] > 0 {
            count[1] -= 1
            answer += 1
        } else { break forLoop }
    default:
        answer += 1
    }
}

print(answer)
