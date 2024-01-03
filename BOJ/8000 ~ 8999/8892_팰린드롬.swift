let t = Int(readLine()!)!

for _ in 0..<t {
    print(solution())
}

func solution() -> String {
    let n = Int(readLine()!)!
    var words: [String] = []
    for _ in 0..<n { words.append(readLine()!) }
    
    for i in 0..<n {
        for j in 0..<n where i != j {
            let newWord = words[i] + words[j]
            if newWord == String(newWord.reversed()) {
                return newWord
            }
            
        }
    }
    return "0"
}
