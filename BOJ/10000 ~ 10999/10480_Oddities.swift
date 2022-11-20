let n = Int(readLine()!)!

for _ in 0..<n {
    let num = Int(readLine()!)!
    
    if num % 2 == 0 {
        print("\(num) is even")
    } else {
        print("\(num) is odd")
    }
}
