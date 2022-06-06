var answer: [Int] = []
for index in 1...5 {
    let name = readLine()!.map { String($0) }
    if name.count < 3 {
        continue
    }
    for i in 0..<name.count - 2 {
        if name[i] == "F" && name[i + 1] == "B" && name[i + 2] == "I" {
            answer.append(index)
            break
        }
    }
}

answer.isEmpty ? print("HE GOT AWAY!") : answer.forEach { print($0, terminator: " ")}
