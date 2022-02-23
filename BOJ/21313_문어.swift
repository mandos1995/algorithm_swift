let n = Int(readLine()!)!
var isOdd = n % 2 == 1

if isOdd {
    for _ in 0..<n / 2 {
        print(1, terminator: " ")
        print(2, terminator: " ")
    }
    print(3)
} else {
    for _ in 0..<n / 2 {
        print(1, terminator: " ")
        print(2, terminator: " ")
    }
}
