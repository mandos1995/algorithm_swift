let n = Int(readLine()!)!
for i in 1...n {
    var array = readLine()!.split(separator: " ").map { Int($0)! }
    var k = array.removeFirst()
    print("Case \(i): \(k - 1)", terminator: " ")
    for arr in array {
        if k == 0 {
            break
        }
        print(k * arr, terminator: " ")
        k -= 1
    }
    print()
}
