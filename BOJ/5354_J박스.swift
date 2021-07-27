let n = Int(readLine()!)!
for _ in 0..<n {
    let jBox = Int(readLine()!)!
    print(String(repeating: "#", count: jBox))
    if jBox > 1 {
        for _ in 0..<jBox - 2{
            print("#",terminator: "")
            for _ in 0..<jBox - 2 {
                print("J",terminator: "")
            }
            print("#")
        }
        print(String(repeating: "#", count: jBox))
    }
    print()
}
