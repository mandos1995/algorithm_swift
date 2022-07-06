let dict: [Character: Character] = ["b": "d", "d": "b", "p": "q", "q": "p", "i": "i", "o": "o", "v": "v", "w": "w", "x": "x"]
while let input = readLine() {
    if input == "#" {
        break
    }
    var answer = ""
    var isSuccess = true
    for c in input {
        if dict[c] == nil {
            print("INVALID")
            isSuccess = false
            break
        }
        answer += String(dict[c]!)
    }
    if isSuccess {
        print(String(answer.reversed()))
    }
}
