let n = Int(readLine()!)!
for i in 1...n{
    for _ in stride(from: n, to: i, by: -1){
        print(" ",terminator: "")
    }
    for _ in 1...i{
        print("*",terminator: "")
    }
    print()
}
