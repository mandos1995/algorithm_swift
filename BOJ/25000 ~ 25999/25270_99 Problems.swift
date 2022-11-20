var n = Int(readLine()!)!
var i = 0
while true {
    if (n + i) % 100 == 99 {
        print(n + i)
        break
    }
    
    if (n - i) % 100 == 99 {
        print(n - i)
        break
    }
    
    i += 1
}
