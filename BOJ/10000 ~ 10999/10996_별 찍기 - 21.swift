let n = Int(readLine()!)!
var star = 0
if n % 2 == 0 {
    star = n / 2
} else {
    star = n / 2 + 1
}
for _ in 0..<n {
    for _ in 0..<star {
        print("* ",terminator: "")
    }
    print()
    for _ in 0..<n/2 {
        print(" *",terminator: "")
    }
    print()
}
