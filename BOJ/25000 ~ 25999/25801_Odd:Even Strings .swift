let dict = Dictionary(readLine()!.map { ($0, 1) }, uniquingKeysWith: +)
if dict.values.filter { $0 % 2 == 0 }.isEmpty {
    print(1)
} else if dict.values.filter { $0 % 2 == 1 }.isEmpty {
    print(0)
} else {
    print("0/1")
}
