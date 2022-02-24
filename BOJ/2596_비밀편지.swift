let word = ["000000", "001111", "010011", "011100", "100110", "101001", "110101", "111010"]
var words: [[String]] = []
let n = Int(readLine()!)!
for w in word {
    words.append(w.map { String($0)} )
}

let input = readLine()!.map { String($0) }
var inputWord = [[String]](repeating: [String](repeating: "", count: 0), count: input.count / 6)

var j = 0
for i in 0..<inputWord.count {
    for _ in 0..<6 {
        inputWord[i].append(input[j])
        j += 1
    }
}
var result = ""
var isFail = false
for input in inputWord {
    var maxCount = 0
    for w in words {
        var count = 0
        for i in 0..<6 {
            if w[i] == input[i] {
                count += 1
            }
        }
        if count > 4 {
            result += String(UnicodeScalar(word.firstIndex(of: w.reduce("", +))! + 65)!)
            maxCount = max(count, maxCount)
        }
    }
    if maxCount < 5 {
        print(inputWord.firstIndex(of: input)! + 1)
        isFail = true
        break
    }
    
}
if !isFail {
    print(result)
}
