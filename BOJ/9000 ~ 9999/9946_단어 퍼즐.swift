var i = 1
while let a = readLine(), let b = readLine(), a != "END", b != "END" {
    let dictA = Dictionary(a.map { ($0, 1) }, uniquingKeysWith: +)
    let dictB = Dictionary(b.map { ($0, 1) }, uniquingKeysWith: +)
    print("Case \(i): \(dictA == dictB ? "same" : "different")")
    i += 1
}
