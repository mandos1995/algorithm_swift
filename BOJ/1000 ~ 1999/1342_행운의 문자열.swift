let words = readLine()!
var charCount = [Int](repeating: 0, count: 26)

for w in words {
    charCount[Int(w.asciiValue!) - 97] += 1
}

var answer = 0

func makeString(index: Int, prev: Int) {
    if index == words.count {
        answer += 1
        return
    }
    for i in 0..<26 {
        if charCount[i] < 1 || prev == i {
            continue
        }
        charCount[i] -= 1
        makeString(index: index + 1, prev: i)
        charCount[i] += 1
    }
}

makeString(index: 0, prev: -1)
print(answer)
