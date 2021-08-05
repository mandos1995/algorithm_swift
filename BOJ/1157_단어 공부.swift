var word = readLine()!
word = word.lowercased()
var wordCount: [Int] = [Int](repeating: 0, count: 26)
var count = 0
for i in word {
    wordCount[Int(i.asciiValue! - 97)] += 1
}

for maxCount in wordCount {
    if maxCount == wordCount.max()! {
        count += 1
    }
}

if count > 1 {
    print("?")
} else {
    print(UnicodeScalar(wordCount.firstIndex(of: wordCount.max()!)! + 65)!)
}
