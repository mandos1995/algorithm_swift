while var n = Int(readLine()!), n != 0 {
    defer { print(n) }
    while String(n).count != 1 {
        print(n, terminator: " ")
        n = "\(n)".map { Int(String($0))! }.reduce(1, *)
    }
}
