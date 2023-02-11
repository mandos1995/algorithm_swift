func solution() -> Bool {
    let input = readLine()!.split(separator: "-").map { String($0) }
    let day = Int(input[1])!
    return day <= 90
}

var answer = 0

for _ in 0..<Int(readLine()!)! {
    
    if solution() {
        answer += 1
    }
}

print(answer)
