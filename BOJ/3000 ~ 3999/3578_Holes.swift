let h = Int(readLine()!)!
if h == 0 { print(1) }
else if h == 1 { print(0) }
else {
    if h % 2 == 1 {
        print(4, terminator: "")
    }
    print(String(repeating: "8", count: h / 2))
}
