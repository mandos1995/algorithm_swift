while let n = Double(readLine()!), n != 0 {
    var i: Double = 2
    var t: Double = 0
    while t < n {
        t += 1 / i
        i += 1
    }
    print("\(Int(i-2)) card(s)")
}
