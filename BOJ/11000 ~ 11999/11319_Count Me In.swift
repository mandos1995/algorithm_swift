let n = Int(readLine()!)!
let vowel = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
for _ in 0..<n {
    var vowelCount = 0
    var consonantCount = 0
    let message = readLine()!
    for chr in message {
        if chr == " " {
            continue
        } else if vowel.contains(String(chr)) {
            vowelCount += 1
        } else {
            consonantCount += 1
        }
    }
    print(consonantCount, vowelCount)
}
