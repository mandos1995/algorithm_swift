let t = Int(readLine()!)!
var stack: [(Int, Int)] = []
var answer = 0
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let c = input[0]
    switch c {
    case 0:
        if !stack.isEmpty {
            let element = stack.removeLast()
            let score = element.0, time = element.1 - 1
            runToSubject(score: score, time: time)
        }
    default:
        let score = input[1], time = input[2] - 1
        runToSubject(score: score, time: time)
    }
}

func runToSubject(score: Int, time: Int) {
    if time == 0 {
        answer += score
    } else {
        stack.append((score, time))
    }
}

print(answer)
