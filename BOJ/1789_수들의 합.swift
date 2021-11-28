let s = Int(readLine()!)!
var sum = 0
if s == 1 {
    print(1)
} else {
    for i in 0...s {
        sum += i
        if sum > s {
            print(i - 1)
            break
        }
    }
}
