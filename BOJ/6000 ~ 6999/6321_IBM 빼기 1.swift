let n = Int(readLine()!)!
for index in 1...n {
    let input = readLine()!
    print("String #\(index)")
    for i in input {
        let nextValue = i.asciiValue! + 1 < 91 ? i.asciiValue! + 1 : UInt8(65)
        print(UnicodeScalar(nextValue), terminator: "")
    }
    print()
    print()
}
