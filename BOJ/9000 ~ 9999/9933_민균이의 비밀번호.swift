var words: Set<String> = []
let n = Int(readLine()!)!
for _ in 0..<n {
    let pwd = readLine()!
    let length = pwd.count
    words.insert(pwd)
    if words.contains(String(pwd.reversed())) {
        print(length, pwd.map { $0 }[length / 2])
    }
}
