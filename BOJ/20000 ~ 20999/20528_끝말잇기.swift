let n = Int(readLine()!)!
var set: Set<Character> = []
let words = readLine()!.split(separator: " ").map { String($0) }
words.forEach {
    set.insert($0.first!)
    set.insert($0.last!)
}
set.count == 1 ? print(1) : print(0)
