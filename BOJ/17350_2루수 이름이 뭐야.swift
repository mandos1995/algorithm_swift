var anj = false
for _ in 0..<Int(readLine()!)! {
    let name = readLine()!
    if name == "anj" {
        anj = true
        break
    }
}
anj ? print("뭐야;") : print("뭐야?")
