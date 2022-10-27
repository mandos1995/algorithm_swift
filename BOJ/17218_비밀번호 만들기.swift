let word1 = ["0"] + readLine()!.map { $0 }
let word2 = ["1"] + readLine()!.map { $0 }

var cache = Array(repeating: (Array(repeating: 0, count: word1.count)), count: word2.count)

for i in 1..<word2.count {
    for j in 1..<word1.count {
        if word2[i] == word1[j] {
            cache[i][j] = cache[i - 1][j - 1] + 1
        } else {
            cache[i][j] = max(cache[i - 1][j], cache[i][j - 1])
        }
    }
}

var i = word2.count - 1
var j = word1.count - 1
var answer = ""

while cache[i][j] != 0 {
    if cache[i - 1][j] == cache[i][j] {
        i -= 1
        continue
    }
    
    if cache[i][j - 1] == cache[i][j] {
        j -= 1
        continue
    }
    
    answer += String(word1[j])
    i -= 1
    j -= 1
    continue
    
}

print(String(answer.reversed()))
