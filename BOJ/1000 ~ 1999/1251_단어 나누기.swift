let word = readLine()!.map { $0 }
let n = word.count
var words: [String] = []
for i in 1..<n - 2 {
    for j in i + 1..<n {
        let a = String(word[0..<i].reversed())
        let b = String(word[i..<j].reversed())
        let c = String(word[j...].reversed())
        words.append(a + b + c)
    }
}

print(words.sorted()[0])
