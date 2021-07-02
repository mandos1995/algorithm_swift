let input = Int(readLine()!)!
for i in 0..<input {
    for _ in i..<input-1 {
        print(" ",terminator: "")
    }
    for _ in 0...i {
        print("*",terminator: "")
    }
    print()
}

for i in 0..<input-1 {
    for _ in 0...i {
        print(" ",terminator: "")
    }
    for _ in i..<input-1{
        print("*",terminator: "")
    }
    print()
}
