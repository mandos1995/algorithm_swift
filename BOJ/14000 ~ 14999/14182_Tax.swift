while let n = Int(readLine()!) {
    if n == 0 {
        break
    }
    
    if n > 1000000 && n <= 5000000 {
        print(Int(Double(n) * 0.9))
    } else if n > 5000000 {
        print(Int(Double(n) * 0.8))
    } else {
        print(n)
    }
}
