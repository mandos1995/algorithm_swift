func solution() {
    var words = readLine()!.split(separator: " ").map { String($0) }
    words.append(words.removeFirst())
    words.append(words.removeFirst())
    words.forEach {
        print($0, terminator: " ")
    }
    print()
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
