let n = Int(readLine()!)!
if n == 1 {
    print("*")
} else {
    for _ in 1..<n {
        print(" ",terminator: "")
    }
    print("*")

}
if n != 1 {
    for i in 2..<n {
        for _ in i..<n {
            print(" ",terminator: "")
        }
        print("*",terminator: "")
        for _ in 1..<2 * (i - 2) + 2 {
            print(" ",terminator: "")
        }
        print("*",terminator: "")
        print()
    }
    
}

if n != 1 {
    for i in 0..<n * 2 - 1 {
        print("*",terminator: "")
    }
}
print()
