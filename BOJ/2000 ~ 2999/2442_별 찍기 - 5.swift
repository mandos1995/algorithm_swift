let n = Int(readLine()!)!
for i in 1...n {
    for _ in i..<n {
        print(" ",terminator: "")
    }
    for _ in 1...(2 * i) - 1{
        print("*",terminator: "")
    }
    print()
}
