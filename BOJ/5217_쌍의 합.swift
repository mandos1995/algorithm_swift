let t = Int(readLine()!)!
for _ in 0..<t {
    let n = Int(readLine()!)!
    var n2 = 0
    if n % 2 == 0 {
        n2 = n/2 - 1
    } else {
        n2 = n / 2
    }
    print("Pairs for \(n): ",terminator: "")
    if n < 3 {
        print()
    } else if n < 5{
        for i in 1...n2 {
            print(i, n - i)
        }
    } else {
        print(1, n - 1,terminator: "")
        for i in 2...n2 {
            print(", \(i) \(n - i)",terminator: "")
        }
        print()
    }
}
