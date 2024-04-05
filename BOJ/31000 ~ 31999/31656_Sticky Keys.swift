let word = readLine()!
var prev: Character? = nil
for w in word {
    if let prev, w == prev {
        continue
    }
    print(w, terminator: "")
    prev = w
}
