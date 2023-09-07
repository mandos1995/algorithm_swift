let t = Int(readLine()!)!
for _ in 0..<t {
    let word = readLine()!
    var prev: Character?
    var answer = ""
    for w in word {
        if prev == w { continue }
        prev = w
        answer.append(w)
    }
    print(answer)
}
