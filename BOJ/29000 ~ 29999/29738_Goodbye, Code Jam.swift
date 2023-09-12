let t = Int(readLine()!)!
for i in 1...t {
    solution(i)
}

func solution(_ i: Int) {
    let n = Int(readLine()!)!
    switch n {
    case 1...25: print("Case #\(i): World Finals")
    case 26...1000: print("Case #\(i): Round 3")
    case 1001...4500: print("Case #\(i): Round 2")
    default: print("Case #\(i): Round 1")
        
    }
}

