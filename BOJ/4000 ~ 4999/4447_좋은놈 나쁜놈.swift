let n = Int(readLine()!)!

for _ in 0..<n {
    let name = readLine()!
    var count = [0 ,0]
    for n in name.lowercased() {
        count[0] += n == "g" ? 1 : 0
        count[1] += n == "b" ? 1 : 0
    }
    
    if count[0] > count[1] {
        print("\(name) is GOOD")
    } else if count[0] < count[1] {
        print("\(name) is A BADDY")
    } else {
        print("\(name) is NEUTRAL")
    }
}
