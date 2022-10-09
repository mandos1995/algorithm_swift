let n = Int(readLine()!)!
let t = readLine()!.map { $0 }
for i in 0..<n {
    if t[i...].filter({ $0 == "t" }).count == t[i...].filter({ $0 == "s" }).count {
        print(t[i...].map { String($0) }.reduce("", +))
        break
    }
}
