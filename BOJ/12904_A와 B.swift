let s = readLine()!.map { String($0) }
var t = readLine()!.map { String($0) }

while s.count != t.count {
    if t[t.count - 1] == "A" {
        t.removeLast()
        continue
    } else {
        t.removeLast()
        t = Array(t.reversed())
    }
}

s == t ? print(1) : print(0)
