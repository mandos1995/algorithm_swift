let input = readLine()!.map { $0 }
var answer = [0, 0]
for i in 0..<input.count - 2 {
    if String(input[i...i + 2]) == "JOI" {
        answer[0] += 1
    }
    
    if String(input[i...i + 2]) == "IOI" {
        answer[1] += 1
    }
}

answer.forEach {
    print($0)
}
