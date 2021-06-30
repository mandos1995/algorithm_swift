let n = Int(readLine()!)!
for i in 0..<n{
    for _ in 0..<i{
        print(" ",terminator: "")
    }
    for _ in i..<n{
        print("*",terminator: "")
    }
    print()
}
