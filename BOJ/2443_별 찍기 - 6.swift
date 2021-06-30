let n = Int(readLine()!)!
for i in 1...n {
    for _ in 1..<i{
        print(" ",terminator: "")
    }
    for _ in i...(n * 2 - i) {
        print("*",terminator: "")
    }
    print()
}
