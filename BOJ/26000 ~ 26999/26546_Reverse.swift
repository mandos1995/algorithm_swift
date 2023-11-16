let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let word = input[0], start = Int(input[1])!, end = Int(input[2])!
    for (i, w) in word.enumerated() {
        if start..<end ~= i {
            continue
        }
        print(w, terminator: "")
    }
    print()
}
