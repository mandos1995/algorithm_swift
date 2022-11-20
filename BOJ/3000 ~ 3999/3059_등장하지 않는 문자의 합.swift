for _ in 0..<Int(readLine()!)! {
    var dict: [Character: Bool] = [:]
    var total = 0
    for i in 65...90 {
        total += i
        dict[Character(UnicodeScalar(i)!)] = false
    }
    
    let input = readLine()!

    for i in input {
        if dict[i]! == false {
            total -= Int(i.asciiValue!)
            dict[i] = true
        }
    }
    print(total)
}
