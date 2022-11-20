let n = Int(readLine()!)!

for i in 1 ... n {
    for _ in i ..< n {
        print(" ",terminator: "")
    }
    for _ in 1 ... i {
        print("* ",terminator: "")
    }
    print()
}
