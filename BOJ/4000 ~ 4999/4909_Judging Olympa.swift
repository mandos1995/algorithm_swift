while var scores = readLine()?.split(separator: " ").map({ Double($0)! }).sorted() {
    if scores == [0, 0, 0, 0, 0, 0] { break }
    scores.removeFirst()
    scores.removeLast()
    let avg = scores.reduce(0, +) / 4
    if avg == Double(Int(avg)) {
        print(Int(avg))
    } else {
        print(avg)
    }
}

