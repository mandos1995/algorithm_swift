var words: [String] = []
for _ in 0..<6 {
    words.append(readLine()!)
}
var wordsDict: [String: Int] = [:]

var answerWordDict: [String: Int] = [:]

for word in words {
    if wordsDict[word] == nil {
        wordsDict[word] = 1
    } else {
        wordsDict[word]! += 1
    }
    answerWordDict[word] = 0
}

var newString: [String] = []
var visited = [Bool](repeating: false, count: 6)

func dfs(str: String, d: Int) {
    if d == 3 {
        newString.append(str)
        return
    }
    for i in 0..<6 {
        if !visited[i] {
            visited[i] = true
            dfs(str: str + words[i], d: d + 1)
            visited[i] = false
        }
    }
}
dfs(str: "", d: 0)

var answers: [String] = []

for str in newString {
    var isAnswer = true
    let newWords = str.map { String($0) }
    let newWord1 = newWords[0...2].reduce("", +)
    let newWord2 = newWords[3...5].reduce("", +)
    let newWord3 = newWords[6...8].reduce("", +)
    let newWord4 = newWords[0] + newWords[3] + newWords[6]
    let newWord5 = newWords[1] + newWords[4] + newWords[7]
    let newWord6 = newWords[2] + newWords[5] + newWords[8]
    let newWord = [newWord1, newWord2, newWord3, newWord4, newWord5, newWord6]
    var checkDict: [String: Int] = [:]
    for w in newWord {
        if checkDict[w] == nil {
            checkDict[w] = 1
        } else {
            checkDict[w]! += 1
        }
    }
    
    isAnswer = checkDict == wordsDict
    
    if isAnswer {
        for w in newWord {
            answerWordDict[w]! += 1
        }
    }
    for (key, _ ) in answerWordDict {
        if wordsDict[key]! < answerWordDict[key]! {
            isAnswer = false
        }
    }
    if isAnswer {
        answers.append(str)
    }
    
}

if answers.isEmpty {
    print(0)
} else {
    answers.sort{ $0 < $1 }
    var i = 1
    for a in answers[0] {
        print(a, terminator: "")
        if i % 3 == 0 {
            print()
        }
        i += 1
    }
}
