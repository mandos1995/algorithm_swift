var answer: [String] = []
for i in 1...Int(readLine()!)! {
    if i % 7 == 0 && i % 11 == 0 {
        answer.append("Wiwat!")
    } else if i % 7 == 0 {
        answer.append("Hurra!")
    } else if i % 11 == 0 {
        answer.append("Super!")
    } else {
        answer.append("\(i)")
    }
}
print(answer.joined(separator: "\n"))
