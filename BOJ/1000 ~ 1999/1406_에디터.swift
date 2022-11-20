var wordStack = readLine()!
var cursorStack: [Character] = []
let t = Int(readLine()!)!

for _ in 0..<t {
    let command = readLine()!
    switch command {
    case "L":
        if !wordStack.isEmpty {
            cursorStack.append(wordStack.removeLast())
        }
    case "D":
        if !cursorStack.isEmpty {
            wordStack.append(cursorStack.removeLast())
        }
    case "B":
        if !wordStack.isEmpty {
            wordStack.removeLast()
        }
    default:
        wordStack.append(command.last!)
        continue
    }
}
print(wordStack + cursorStack.reversed())
