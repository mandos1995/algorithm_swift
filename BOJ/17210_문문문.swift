let n = Int(readLine()!)!
var start = Int(readLine()!)!
if n > 5 {
    print("Love is open door")
} else {
    for _ in 0..<n - 1 {
        if start == 0 {
            print(1)
            start = 1
        } else {
            print(0)
            start = 0
        }
    }
}
