let vowel = "aeiou".map { $0 }

while let word = readLine(), word != "end" {
    let word = word.map { $0 }
    var isAcceptable = true
    
    var isContainsVowel = false
    vowel.forEach {
        if word.contains($0) {
            isContainsVowel = true
        }
    }
    
    var isChainedVowel = false
    
    if word.count >= 3 {
        for i in 0..<word.count - 2 {
            if vowel.contains(word[i]) && vowel.contains(word[i + 1]) && vowel.contains(word[i + 2]) {
                isChainedVowel = true
            }
            if !vowel.contains(word[i]) && !vowel.contains(word[i + 1]) && !vowel.contains(word[i + 2]) {
                isChainedVowel = true
            }
        }
    }
    
    var isChained = false
    
    if word.count >= 2 {
        for i in 0..<word.count - 1 {
            if word[i] == word[i + 1] && word[i] != "e" && word[i] != "o" {
                isChained = true
            }
        }
    }
    
    isAcceptable = isContainsVowel && !isChainedVowel && !isChained
    print("<\(String(word))> is ", terminator: "")
    print(isAcceptable ? "acceptable." : "not acceptable.")
}
