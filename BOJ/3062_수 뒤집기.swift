for _ in 0..<Int(readLine()!)! {
    let n = readLine()!
    let reversedN = String(n.reversed())
    let total = String(Int(n)! + Int(reversedN)!)
    total == String(total.reversed()) ? print("YES") : print("NO")
}
