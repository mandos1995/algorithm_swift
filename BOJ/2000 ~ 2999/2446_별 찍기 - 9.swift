let n = Int(readLine()!)!
if n == 1{
    print("*")
}else{
    for i in 0..<n{
        for _ in 0..<i{
            print(" ", terminator: "")
        }
        for _ in i...2 * (n - 1) - i{
            print("*", terminator: "")
        }
        print()
    }

    for i in 1...n-1{
        for _ in i..<n-1{
            print(" ",terminator: "")
        }
        for _ in i...2 * i + i{
            print("*",terminator: "")
        }
        print()
    }
}
