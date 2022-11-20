let t = Int(readLine()!)!

for _ in 0..<t {
    readLine()!
    let n = Int(readLine()!)!
    var candyNum = 0
    for _ in 0..<n {
        let candy = Int(readLine()!)!
        candyNum += candy % n
    }
    candyNum %= n
    candyNum == 0 ? print("YES") : print("NO")
}
