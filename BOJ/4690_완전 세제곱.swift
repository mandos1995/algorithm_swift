for a in 2...100 {
    for b in 2..<a {
        for c in b..<a {
            for d in c..<a {
                if pow3(a) == pow3(b) + pow3(c) + pow3(d) {
                    print("Cube = \(a), Triple = (\(b),\(c),\(d))")
                }
                
            }
        }
    }
}

func pow3(_ n: Int) -> Int {
    return n * n * n
}
