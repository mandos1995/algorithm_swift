_ = readLine()
let words = readLine()!.split(separator: " ").map { String($0) }
let word = readLine()!
print(words.filter { $0 == word }.count)
