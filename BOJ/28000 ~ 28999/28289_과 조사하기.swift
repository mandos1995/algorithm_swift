let n = Int(readLine()!)!
var answer = [0, 0, 0, 0]
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let g = input[0], c = input[1]
    if g == 1 {
        answer[3] += 1
        continue
    }
    if c <= 2 {
        answer[0] += 1
    }
    else if c == 3 {
        answer[1] += 1
    } else {
        answer[2] += 1
    }

}
answer.map { String($0) }.forEach { print($0) }
