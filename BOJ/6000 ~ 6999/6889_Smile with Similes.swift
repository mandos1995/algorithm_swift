let n = Int(readLine()!)!
let m = Int(readLine()!)!
var word1: [String] = []
var word2: [String] = []
for _ in 0..<n { word1.append(readLine()!) }
for _ in 0..<m { word2.append(readLine()!) }
for w1 in word1 {
    for w2 in word2 {
        print(w1 + " as " + w2)
    }
}
