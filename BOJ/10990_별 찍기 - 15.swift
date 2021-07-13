let n = Int(readLine()!)!

for i in 0..<n {
    for j in i..<n-1 {
        print(" ",terminator: "")
    }
    print("*",terminator: "")
    if i != 0 {
        for k in 0..<2 * (i - 1) + 1 {
            print(" ",terminator: "")
        }
        print("*",terminator: "")
    }
    print()
}
