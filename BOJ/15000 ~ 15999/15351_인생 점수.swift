for _ in 0..<Int(readLine()!)! {
    let word = readLine()!.split(separator: " ").map { $0 }.reduce("", +)
    var score = 0
    word.forEach {
        score += Int($0.asciiValue! - 64)
    }
    score == 100 ? print("PERFECT LIFE") : print(score)
}
