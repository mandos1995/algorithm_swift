let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let num = Int(input[0])!
    let string = input[1]
    for chr in string {
        for _ in 0..<num {
            print(chr,terminator: "")
        }
    }
    print()
}
