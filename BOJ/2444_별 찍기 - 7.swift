let n = Int(readLine()!)!
if n == 1{
    print("*")
} else {
    for i in 1...n{
        for _ in i..<n{
            print(" ",terminator: "")
        }
        for _ in 1...i * 2 - 1{
            print("*",terminator: "")
        }
        print()
    }
    for i in 1...n-1{
        for _ in 1...i{
            print(" ",terminator: "")
        }
        for _ in i...2 * (n-1) - i{
            print("*",terminator: "")
        }
        print()
    }
    
}
