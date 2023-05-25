import Foundation

let input = readLine()!.split(separator: " ").map { Double($0)! }
let x = input[0], y = input[1], d = input[2], t = input[3]
let distance = sqrt(pow(x, 2) + pow(y, 2))

if d < t {
    print(distance)
} else {
    var answer = distance
    let jump = floor(distance / d)
    let remain = distance - floor(jump) * d
    
    if jump == 0 {
        answer = min(answer, min(t + d - remain, t * 2))
    } else {
        answer = min(answer, jump * t + remain, (jump + 1) * t)
    }
    print(answer)
}
